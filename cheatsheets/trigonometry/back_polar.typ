#import "utilities.typ":*


#let R = 7
#let s = 10pt

#let r = 5
#let t = 40

#let x = r*calc.cos(calc.pi/180 * t)
#let y = r*calc.sin(calc.pi/180 * t)

#let ANGLE = 360

#let drawCircularGrid(step:3) = {
	let i = 1
	while (i <= R) {
		drawArc((R*s, R*s), i*s, 360 - ANGLE, 360, step:step, stroke:(paint:silver, thickness:0.5pt))
		i = i + 1
	}

	i = 0
	while (i <= ANGLE) {
		place(
			dx:R*s,
			dy:R*s,
			line(
				length:R*s,
				angle:-i*1deg,
				stroke:(paint:silver, thickness:0.5pt),
			),
		)
		i = i + 20
	}
}


#let polar = block(height:2*R*s, width:2*R*s)[
	#drawCircularGrid()

	#drawArc((R*s, R*s), 1.5*s, 320, 360, stroke:0.5pt)

	#place(line(
		start:(R*s,R*s),
		end:((R+x)*s, R*s),
		stroke:(thickness:0.5pt, paint:red, dash:"dashed", cap:"round"),
	))
	#place(line(
		start:((R+x)*s, R*s),
		end:((R+x)*s, (R - y)*s),
		stroke:(thickness:0.5pt, paint:blue, dash:"dashed", cap:"round"),
	))
	#place(line(
		start:(R*s,R*s),
		end:((R+x)*s, (R - y)*s),
		stroke:(thickness:0.5pt, dash:"dashed", cap:"round"),
	))

	#place(
		dx: (R+x)*s - 2pt,
		dy: (R - y)*s - 2pt,
		circle(
			radius:2pt,
			fill:black,
		),
	)

	#place(
		center+horizon,
		dx: 2.5*calc.cos(60*calc.pi/180) * s,
		dy: -2.5*calc.sin(60*calc.pi/180) * s,
		$r$
	)
	#place(
		center+horizon,
		dx: 2*calc.cos(20*calc.pi/180) * s,
		dy: -2*calc.sin(20*calc.pi/180) * s,
		$theta$
	)

	#place(
		center+horizon,
		dx: 2*calc.cos(-20*calc.pi/180) * s,
		dy: -2*calc.sin(-20*calc.pi/180) * s,
		text(fill:red, $x$)
	)
	#place(
		center+horizon,
		dx: 5*calc.cos(20*calc.pi/180) * s,
		dy: -5*calc.sin(20*calc.pi/180) * s,
		text(fill:blue, $y$)
	)

	#place(
		bottom+left,
		dx: (R+x)*s + 2pt,
		dy: -(R+y)*s - 3pt,
		$(r, theta)$,
	)

]
