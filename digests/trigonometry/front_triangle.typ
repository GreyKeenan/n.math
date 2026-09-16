#import "utilities.typ":*

#let Triangle(h) = { // h = height when width = 1
	let s = 1/h
	let angle = calc.atan(1/s).deg()
	let angle2 = 90 - angle
	let angleR = angle * calc.pi/180
	let hyp = calc.sqrt(h*h + 1)

	place(line(
		stroke:myred,
		start:(0%,100%),
		end:(100%,100%),
	))
	place(line(
		stroke:myblue,
		start:(100%,100%),
		end:(100%,0%),
	))
	place(line(
		start:(0%,100%),
		end:(100%,0%),
	))

	//TODO right-angle indicator broken
	/*
	place(bottom+left, line(
		stroke: 1pt,
		start:(90%, 100%),
		end:(90%, 80%)
	))
	place(bottom+left, line(
		stroke: 1pt,
		start:(90%, 80%),
		end:(100%, 80%)
	))
	*/
	let rangl = 7pt
	place(line(
		stroke:(paint:gray, thickness:0.5pt),
		start:(100%, 100% - rangl),
		length:-rangl,
	))
	place(line(
		stroke:(paint:gray, thickness:0.5pt),
		start:(100% - rangl, 100%),
		length:rangl,
		angle:-90deg,
	))

	let drawArc(o:(0,0), a:angle, i:0, r:25%, color:black) = {
		let step = 1
		while (i <= a) {
			i = i + step
			let i0 = -( i - step ) * calc.pi/180
			let i1 = -( i        ) * calc.pi/180
			place(bottom+left,line(
				stroke:(thickness:0.5pt, paint:color),
				start:(
					(o.at(0) + calc.cos(i0)) * r,
					(o.at(1) + calc.sin(i0)) * (r*s)
				),
				end:(
					(o.at(0) + calc.cos(i1)) * r,
					(o.at(1) + calc.sin(i1)) * (r*s)
				),
			))
		}
	}
	drawArc()
	place(
		bottom+left,
		dx: calc.cos(angleR/2) * 30%,
		dy: calc.sin(angleR/2) * -30% * s + 0.25em,
		$theta$
	)

	drawArc(o:(100/15,-100/30), a:270, i:180 + angle, r:15%, color:gray)
	place(
		dx: 100% + calc.cos(
			calc.pi/180 * (180 + angle + angle2/2)
		) * 20% - 0.3em,
		dy: calc.sin(
			calc.pi/180 * (180 + angle + angle2/2)
		) * -20% * s - 0.25em,
		text(fill:gray, $alpha$)
	)

	let t = []
	//t = $h times cos theta$
	t = $a$
	place(
		top+center,
		dx: 0%,
		dy: 100% + 1pt,
		text(fill:myred, t),
	)
	//t = $h times sin theta$
	t = $b$
	place(
		horizon+left,
		dx: 100% + 2pt,
		dy: 0%,
		text(fill:myblue, t),
	)
	t = rotate(angle*-1deg, origin:bottom+left, $c$)
	let q = (h/hyp, -1/hyp)
	place(
		horizon+center,
		dx: 0% + q.at(0)*(0.5em + 2pt),
		dy: 0% + q.at(1)*(0.5em + 2pt),
		t
	)

}

