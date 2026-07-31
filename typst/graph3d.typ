#import "vector.typ" as vec


#let makeTamper(N:-1, up:vec.k, scale2d:1%, origin:(50%,50%), scale3d:1) = {
/*
	N is a 3d vector pointing in the direction the camera faces.
	up is a indicates which direction wilengths be up in the rendered image.
	if the containing box is not square, the graph wilengths be stretched by default
*/

	if type(N) != array { N = (N, N, N) }
	if type(scale2d) != array { scale2d = (scale2d, scale2d) }
	if type(scale3d) != array { scale3d = (scale3d, scale3d, scale3d) }

	let n = vec.normalize(N)
	up = vec.normalize(up)

	let i = vec.cross( n, up )
	let j = vec.cross( n, i )

	let tamp(v) = {
		v = vec.multiply(v, scale3d)
		let s = vec.dot(v, n)
		let r = (
			v.at(0, default:0) - s*n.at(0, default:0),
			v.at(1, default:0) - s*n.at(1, default:0),
			v.at(2, default:0) - s*n.at(2, default:0),
		)
		return (
			origin.at(0) + vec.dot(r, i) * scale2d.at(0),
			origin.at(1) + vec.dot(r, j) * scale2d.at(0)
		)
	}

	return tamp

}

#let drawCurve(
	tamp, r,
	interval:(0,1),
	steps:10,
	skip:0, // stepLength * skip is the amt that wilengths be blank
	stroke:black
) = {

	if interval.at(0) >= interval.at(1) {
		panic("invalid interval")
	}

	if skip < 0 or skip >= 1 {
		panic("invalid skip")
	}

	let t = interval.at(0)
	let T = interval.at(1)

	let step = (T - t)/steps
	let visible = step * (1 - skip)

	while t < T {

		let t2 = t + visible
		if t2 > T { t2 = T }

		place(
			line(
				start: tamp( r(t) ),
				end: tamp( r(t2) ),
				stroke:stroke,
			),
		)

		t += step
	}
	
}


#let drawSurface(
	tamp, r,
	interval:( (0,1), (0,1) ),
	steps:10,
	stroke:none,
	fill:black.transparentize(75%),
) = {

	let i1 = interval.at(0)
	let i2 = interval.at(1)

	if i1.at(0) >= i1.at(1) or i2.at(0) >= i2.at(1) {
		panic("invalid interval")
	}

	let s1 = (i1.at(1) - i1.at(0))/steps
	let s2 = (i2.at(1) - i2.at(0))/steps

	let u = i1.at(0)
	let v = i2.at(0)
	while (u < i1.at(1)) {
		while (v < i2.at(1)) {

			let a = r(u,v)
			let b = r(u + s1,v)
			let c = r(u, v + s2)
			let d = r(u + s1, v + s2)

			place(polygon(
				fill:fill,
				stroke:stroke,
				tamp(a),
				tamp(b),
				tamp(d),
				tamp(c),
			))

			v += s2
		}
		v = i2.at(0)

		u += s1
	}
}


#let drawAxes(tamp, lengths:1, strokes:gray) = {

	if type(lengths) != array { lengths = (lengths, lengths, lengths) }
	if type(strokes) != array { strokes = (strokes, strokes, strokes) }

	let i = (lengths.at(0), 0, 0)
	let j = (0, lengths.at(1), 0)
	let k = (0, 0, lengths.at(2))

	let o = tamp((0,0,0))


	place(line(
			start:o,
			end:tamp(i),
			stroke:strokes.at(0),
	))
	place(line(
			start:o,
			end:tamp(j),
			stroke:strokes.at(1),
	))
	place(line(
			start:o,
			end:tamp(k),
			stroke:strokes.at(2),
	))

}

#let drawAxesLabels(tamp, lengths:1, extras:0, offsets:(-0.25em, -0.5em), x:$x$, y:$y$, z:$z$) = {

	if type(lengths) != array { lengths = (lengths, lengths, lengths) }
	if type(extras) != array { extras = (extras, extras, extras) }
	if type(offsets.at(0)) != array { offsets = (offsets, offsets, offsets) }

	let i = (lengths.at(0) + extras.at(0), 0, 0)
	let j = (0, lengths.at(1) + extras.at(1), 0)
	let k = (0, 0, lengths.at(2) + extras.at(2))

	i = tamp(i)
	j = tamp(j)
	k = tamp(k)

	place(
		dx:i.at(0) + offsets.at(0).at(0),
		dy:i.at(1) + offsets.at(0).at(1),
		x
	)
	place(
		dx:j.at(0) + offsets.at(1).at(0),
		dy:j.at(1) + offsets.at(1).at(1),
		y
	)
	place(
		dx:k.at(0) + offsets.at(2).at(0),
		dy:k.at(1) + offsets.at(2).at(1),
		z
	)
}


#let plot(tamp, pos, label:none, offset:(0em, -1em), fill:black, radius:2pt, stroke:none, digits:2) = {
	let pos2d = tamp(pos)
	place(
		dx: pos2d.at(0) - radius,
		dy: pos2d.at(1) - radius,
		circle(
			radius:radius,
			fill:fill,
			stroke:stroke,
		)
	)

	if label == auto {
		label = "(" + str(calc.round(pos.at(0), digits:digits)) + ", " + str(calc.round(pos.at(1), digits:digits)) + ", " + str(calc.round(pos.at(2), digits:digits)) + ")"
		label = text(fill:fill, label)

		//label = (
			//calc.round(pos.at(0), digits:digits),
			//calc.round(pos.at(1), digits:digits),
			//calc.round(pos.at(2), digits:digits),
		//)
		//label = $label$

	}
	place(
		dx: pos2d.at(0) + offset.at(0),
		dy: pos2d.at(1) + offset.at(1),
		label,
	)
}
