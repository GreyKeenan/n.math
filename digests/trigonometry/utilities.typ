
#let myred = red
#let myblue = blue

#let abox(a, t) = block(align(a, t))
#let aabox(a1, a2, t) = align(a1, block(align(a2, t)))

#let figl(t, alt:"", a:left) = [
	#show figure: set align(a)
	//#show figure: set block(fill:black.transparentize(95%))
	#figure(t, alt:alt)
]

#let DEG = $"o"$

#let aaC = red
#let bbC = blue
#let ccC = black

#let aa = text(fill:aaC, $a$)
#let bb = text(fill:bbC, $b$)
#let cc = text(fill:ccC, $c$)
#let AA = text(fill:aaC, $alpha$)
#let BB = text(fill:bbC, $beta$)
#let CC = text(fill:ccC, $gamma$)

#let circColor = gray
#let rr = text(fill:circColor, $r$)

#let polar_deg(r, deg) = {
	return (
		r * calc.cos(deg * calc.pi/180),
		r * calc.sin(deg * calc.pi/180),
	)
}

#let add2(a, b) = {
	return (a.at(0) + b.at(0), a.at(1) + b.at(1))
}
#let avg2(a, b) = {
	return (
		( a.at(0) + b.at(0) )/2,
		( a.at(1) + b.at(1) )/2,
	)
}

#let drawArc(center, radius, from, to, step:1, stroke:black) = {

	if (to <= from) { panic("the initial angle must be less than the final angle") }

	let t = from
	while (t < to) {

		let t0 = t * calc.pi/180
		t = t + step
		let t1 = t * calc.pi/180

		let startx = center.at(0) + radius * calc.cos(t0)
		let starty = center.at(1) + radius * calc.sin(t0)
		let endx = center.at(0) + radius * calc.cos(t1)
		let endy = center.at(1) + radius * calc.sin(t1)

		place(line( start:(startx, starty), end:(endx, endy), stroke:stroke ))

	}
}

#let drawCurve(f, domain, origin, scale, step:1, stroke:black) = {

	if (domain.at(1) <= domain.at(0)) { panic("Expected x1 to be greater than x0.") }

	let x = domain.at(0)

	while (x < domain.at(1)) {
		let x0 = x
		x = x + step
		let x1 = x

		place(line(
			start:(
				origin.at(0) + x0 * scale,
				origin.at(1) + f(x0) * scale,
			),
			end:(
				origin.at(0) + x1 * scale,
				origin.at(1) + f(x1) * scale,
			),
			stroke:stroke,
		))
	}
}


#let drawGrid(width, height) = {

	let i = 0
	while (i < width - 1) {
		i += 1

		place(
			dx: (1/width) * 100% * i,
			dy:0%,
			line(
				angle:90deg,
				length:100%,
			),
		)

	}

}

// vector stuff:
#let dot(v,u) = (v.at(0)*u.at(0) + v.at(1)*u.at(1) + v.at(2)*u.at(2))
#let mag(v) = calc.sqrt( v.at(0)*v.at(0) + v.at(1)*v.at(1) + v.at(2)*v.at(2) )
#let project(v,n) = {
	let m = mag(n)
	let d = dot(v,n)
	let s = d / (m*m)
	return (
		v.at(0) - s*n.at(0),
		v.at(1) - s*n.at(1),
		v.at(2) - s*n.at(2),
	)
}
#let cross(v,u) = (
	v.at(1)*u.at(2) - v.at(2)*u.at(1),
	v.at(2)*u.at(0) - v.at(0)*u.at(2),
	v.at(0)*u.at(1) - u.at(0)*v.at(1),
)
#let unit(v) = {
	let m = mag(v)
	return ( v.at(0)/m, v.at(1)/m, v.at(2)/m )
}
#let scale(v, s) = ( s*v.at(0), s*v.at(1), s*v.at(2) )

