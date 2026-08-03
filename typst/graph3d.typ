#import "vector.typ" as vec

#let d = 5

#let labelhighlight(t) = highlight(fill:white.transparentize(15%), radius:4pt, t)

#let view(
	//frame:(100%, 100%),
	normal:-1, up:vec.k, scale2d:1%, scale3d:1,
	origin:(50%,50%),
	intervals:(-d, d),
) = {
	if type(normal) != array { normal = (normal, normal, normal) }
	if type(scale2d) != array { scale2d = (scale2d, scale2d) }
	if type(scale3d) != array { scale3d = (scale3d, scale3d, scale3d) }
	if type(intervals.at(0)) != array { intervals = (intervals, intervals, intervals) }

	up = vec.normalize(up)
	let n = vec.normalize(normal)
	let i = vec.cross( n, up )
	let j = vec.cross( n, i )
	let stamp(v) = {
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
	
	return (
		normal:normal,
		up:up,
		scale2d:scale2d,

		x:intervals.at(0),
		x0:intervals.at(0).at(0),
		x1:intervals.at(0).at(1),
		y:intervals.at(1),
		y0:intervals.at(1).at(0),
		y1:intervals.at(1).at(1),
		z:intervals.at(2),
		z0:intervals.at(2).at(0),
		z1:intervals.at(2).at(1),

		stamp:stamp
	)
}

#let connect(view, p1, p2, stroke:black) = {
	place(line(
		start:(view.stamp)(p1),
		end:(view.stamp)(p2),
		stroke:stroke,
	))
}

#let polygon(view, points, stroke:black) = {
	let i = 1
	while i < points.len() {
		connect(view, points.at(i - 1), points.at(i), stroke:stroke)
		i += 1
	}
	connect(view, points.at(-1), points.at(0), stroke:stroke)
	//TODO: vertices
}

#let plot(view, pos, label:none, offset:(0em, -1em), fill:black, radius:2pt, stroke:none, digits:2) = {
	let pos2d = (view.stamp)(pos)
	if label == auto {
		label = "(" + str(calc.round(pos.at(0), digits:digits)) + ", " + str(calc.round(pos.at(1), digits:digits)) + ", " + str(calc.round(pos.at(2), digits:digits)) + ")"
		label = labelhighlight(text(fill:fill, label))
	}
	place(
		dx: pos2d.at(0) + offset.at(0),
		dy: pos2d.at(1) + offset.at(1),
		label,
	)
	place(
		dx: pos2d.at(0) - radius,
		dy: pos2d.at(1) - radius,
		circle(
			radius:radius,
			fill:fill,
			stroke:stroke,
		)
	)
}


#let drawGrid(view,
	xy:auto,
	yz:none,
	xz:none,
	gridlines:silver+0.5pt,
	step:1,
	axes:gray,
) = {
	if xy == auto {
		xy = (
			(view.x0, view.x1),
			(view.y0, view.y1),
		)
	}
	if yz == auto {
		yz = (
			(view.y0, view.y1),
			(view.z0, view.z1),
		)
	}
	if xz == auto {
		xz = (
			(view.x0, view.x1),
			(view.z0, view.z1),
		)
	}
	if gridlines != none {
		if (xy != none) {
			let i = view.x0
			while i <= view.x1 {
				connect(view,
					(i, xy.at(1).at(0), 0),
					(i, xy.at(1).at(1), 0),
					stroke:gridlines,
				)
				i += step
			}
			i = view.y0
			while i <= view.y1 {
				connect(view,
					(xy.at(0).at(0), i, 0),
					(xy.at(0).at(1), i, 0),
					stroke:gridlines,
				)
				i += step
			}
		}
		if yz != none {
			let i = view.z0
			while i <= view.z1 {
				connect(view,
					(0, yz.at(0).at(0), i),
					(0, yz.at(0).at(1), i),
					stroke:gridlines,
				)
				i += step
			}
			i = view.y0
			while i <= view.y1 {
				connect(view,
					(0, i, yz.at(1).at(0)),
					(0, i, yz.at(1).at(1)),
					stroke:gridlines,
				)
				i += step
			}
		}
		if xz != none {
			let i = view.x0
			while i <= view.x1 {
				connect(view,
					(i, 0, xz.at(1).at(0)),
					(i, 0, xz.at(1).at(1)),
					stroke:gridlines,
				)
				i += step
			}
			i = view.z0
			while i <= view.z1 {
				connect(view,
					(xz.at(0).at(0), 0, i),
					(xz.at(0).at(1), 0, i),
					stroke:gridlines,
				)
				i += step
			}
		}
	}
	connect(view, (view.x0, 0, 0), (view.x1, 0, 0), stroke:axes)
	connect(view, (0, view.y0, 0), (0, view.y1, 0), stroke:axes)
	connect(view, (0, 0, view.z0), (0, 0, view.z1), stroke:axes)
}

#let drawAxisLabels(
	view,
	labels:(
		labelhighlight[x],
		labelhighlight[y],
		labelhighlight[z],
	),
	labelDistances:0,
	labelOffsets:(-0.25em, -0.5em),
) = {
	if type(labelDistances) != array { labelDistances = (labelDistances, labelDistances, labelDistances) }
	if type(labelOffsets.at(0)) != array { labelOffsets = (labelOffsets, labelOffsets, labelOffsets) }
	let i = (view.x1 + labelDistances.at(0), 0, 0)
	let j = (0, view.y1 + labelDistances.at(1), 0)
	let k = (0, 0, view.z1 + labelDistances.at(2))
	i = (view.stamp)(i)
	j = (view.stamp)(j)
	k = (view.stamp)(k)
	place(
		dx:i.at(0) + labelOffsets.at(0).at(0),
		dy:i.at(1) + labelOffsets.at(0).at(1),
		labels.at(0),
	)
	place(
		dx:j.at(0) + labelOffsets.at(1).at(0),
		dy:j.at(1) + labelOffsets.at(1).at(1),
		labels.at(1),
	)
	place(
		dx:k.at(0) + labelOffsets.at(2).at(0),
		dy:k.at(1) + labelOffsets.at(2).at(1),
		labels.at(2),
	)
}

#let drawCurve(
	view, r, // r is a vector function of 1 variable
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
				start: (view.stamp)( r(t) ),
				end: (view.stamp)( r(t2) ),
				stroke:stroke,
			),
		)
		t += step
	}
	
}

#let drawSurface(
	view, r, // r is a vector function of two variables
	intervals:(0,1),
	steps:10, // TODO make separate for each
	stroke:none,
	fill:black.transparentize(75%),
) = {
	if type(intervals.at(0)) != array { intervals = (intervals, intervals) }
	let i1 = intervals.at(0)
	let i2 = intervals.at(1)
	if i1.at(0) >= i1.at(1) or i2.at(0) >= i2.at(1) {
		panic("invalid intervals")
	}
	let s1 = (i1.at(1) - i1.at(0))/steps
	let s2 = (i2.at(1) - i2.at(0))/steps
	let u = i1.at(0)
	let v = i2.at(0)
	while (u < i1.at(1)) {
		while (v < i2.at(1)) {
			let U = u + s1
			if U > i1.at(1) { U = i1.at(1) }
			let V = v + s2
			if V > i2.at(1) { V = i2.at(1) }
			let a = r(u,v)
			let b = r(U,v)
			let c = r(u, V)
			let d = r(U, V)
			place(polygon(
				fill:fill,
				stroke:stroke,
				(view.stamp)(a),
				(view.stamp)(b),
				(view.stamp)(d),
				(view.stamp)(c),
			))
			v += s2
		}
		v = i2.at(0)
		u += s1
	}
}
