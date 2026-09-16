#import "utilities.typ":*


#let key = $(#text(myred, $cos$) theta, #text(myblue, $sin$) theta)$

#let RED(t) = text(fill:myred, t)
#let BLUE(t) = text(fill:myblue, t)

#let r1 = RED($1$)
#let r2 = RED($sqrt(3)/2$)
#let r3 = RED($sqrt(2)/2$)
#let r4 = RED($1/2$)
#let r5 = RED($0$)
#let rm = RED($-$)
#let b1 = BLUE($1$)
#let b2 = BLUE($sqrt(3)/2$)
#let b3 = BLUE($sqrt(2)/2$)
#let b4 = BLUE($1/2$)
#let b5 = BLUE($0$)
#let bm = BLUE($-$)

#let points = (
	(1,0),
	(calc.sqrt(3)/2, 1/2),
	(calc.sqrt(2)/2, calc.sqrt(2)/2),
	(1/2, calc.sqrt(3)/2),
	(0, 1),
	(-1/2, calc.sqrt(3)/2),
	(-calc.sqrt(2)/2, calc.sqrt(2)/2),
	(-calc.sqrt(3)/2, 1/2),
	(-1,0),
	(-calc.sqrt(3)/2, -1/2),
	(-calc.sqrt(2)/2, -calc.sqrt(2)/2),
	(-1/2, -calc.sqrt(3)/2),
	(0,-1),
	(1/2, -calc.sqrt(3)/2),
	(calc.sqrt(2)/2, -calc.sqrt(2)/2),
	(calc.sqrt(3)/2, -1/2),
)
#let pointsText = (
	$(#{r1}, #{b5})$,
	$(#{r2}, #{b4})$,
	$(#{r3}, #{b3})$,
	$(#{r4}, #{b2})$,
	$(#{r5}, #{b1})$,
	$(#{rm + r4}, #{b2})$,
	$(#{rm + r3}, #{b3})$,
	$(#{rm + r2}, #{b4})$,
	$(#{rm + r1}, #{b5})$,
	$(#{rm + r2}, #{bm + b4})$,
	$(#{rm + r3}, #{bm + b3})$,
	$(#{rm + r4}, #{bm + b2})$,
	$(#{r5}, #{bm + b1})$,
	$(#{r4}, #{bm + b2})$,
	$(#{r3}, #{bm + b3})$,
	$(#{r2}, #{bm + b4})$,
)

#let angles = (
	$0 \ 2pi$,
	$(pi)/6$,
	$(pi)/4$,
	$(pi)/3$,
	$(pi)/2$,
	$(2pi)/3$,
	$(3pi)/4$,
	$(5pi)/6$,
	$pi$,
	$(7pi)/6$,
	$(5pi)/4$,
	$(4pi)/3$,
	$(3pi)/2$,
	$(5pi)/3$,
	$(7pi)/4$,
	$(11pi)/6$,
	$2pi$,
)
#let degrees = (
	$0^DEG \ 360^DEG$,
	$30^DEG$,
	$45^DEG$,
	$60^DEG$,
	$90^DEG$,
	$120^DEG$,
	$135^DEG$,
	$150^DEG$,
	$180^DEG$,
	$210^DEG$,
	$225^DEG$,
	$240^DEG$,
	$270^DEG$,
	$300^DEG$,
	$315^DEG$,
	$330^DEG$,
	$360^DEG$,
)

#let drawPoint(p) = {
	place(
		center+horizon,
		dx: p.at(0) * 50%,
		dy: -p.at(1) * 50%,
		circle( radius:2pt, fill:black ),
	)
}

#let drawLine(p) = {
	place(line(
		start:(50%, 50%),
		end:(
			p.at(0) * 50% + 50%,
			-p.at(1) * 50% + 50%,
		),
		stroke:(paint:silver, thickness:0.5pt, /*dash:"dashed"*/)
	))

	/*
	place(line(
		start:(50%, 50%),
		end:(
			p.at(0) * 50%*55% + 50%,
			-p.at(1) * 50%*55% + 50%,
		),
		stroke:(paint:silver, thickness:0.5pt, cap:"round")
	))
	*/

	/*
	let s = (paint:silver, thickness:0.5pt)

	place(line(
		start:(50%, 50%),
		end:(
			//p.at(0) * 50% + 50%,
			//-p.at(1) * 50% + 50%,
			p.at(0) * 50%*55% + 50%,
			-p.at(1) * 50%*55% + 50%,
		),
		stroke:s,
	))
	place(line(
		start:(
				p.at(0) * 50%*72% + 50%,
				-p.at(1) * 50%*72% + 50%,
		),
		end:(
			p.at(0) * 50%*75% + 50%,
			-p.at(1) * 50%*75% + 50%,
		),
		stroke:s,
	))
	place(line(
		start:(
				p.at(0) * 50%*95% + 50%,
				-p.at(1) * 50%*95% + 50%,
		),
		end:(
			p.at(0) * 50% + 50%,
			-p.at(1) * 50% + 50%,
		),
		stroke:s,
	))

	*/
}

#let drawLabel(i) = context {

	let x = points.at(i).at(0)
	let y = points.at(i).at(1)
	let q = calc.floor(i / 4) + 1 // quadrant number

	if (i > 15) or (i < 0) {
		panic("invalid index")
	}

	let label = text(size:12pt, pointsText.at(i))
	let w = measure(label).width
	let h = 1em

	let offx = -w/2
	let offy = -h/2

	//let buffer = 16pt
	let buffer = 0pt
	let W = w + buffer
	let H = h + buffer

	if x == 0 {
	} else if x < 0 {
		offx -= W/2
	} else if x > 0 {
		offx += W/2
	}

	let s = -1/2
	if y < 0 {
		s = 1
	} else if y > 0 {
		s = -1
	}

	let m = calc.rem(i, 4)
	if (m != 0) and (q == 2 or q == 4) {
		m = 4 - m
	}

	if m == 0 {
		if i == 4 {
			offy -= H/2
		} else if i == 12 {
			offy += H/2
		}
	} else if m == 1 {
		offy -= s * H/1.5
	} else if m == 2 {
	} else if m == 3 {
		offy += s * H/1.5
	}

	let r = 50% + 8pt
	place(
		dx: x * r + 50% + offx,
		dy: -y * r + 50% + offy,
		label,
	)

}

#let drawAngle(i) = context {
	
	let x = points.at(i).at(0)
	let y = points.at(i).at(1)

	let l1 = text(size:10pt, angles.at(i))
	let l2 = text(size:8pt, fill:black, degrees.at(i))

	let offx = -measure(l1).width/2
	let offy = -5pt
	if (i == 0) {
		offy = -measure(l1).height/2 + 2pt
	}
	let r = 50%*85%

	place(
		dx: 50% + r * x + offx,
		dy: 50% - r * y + offy,
		l1,
	)

	offx = -measure(l2).width/2
	offy = -4pt
	if (i == 0) {
		offy = -measure(l2).height/2 + 2pt
	}
	r = 50%*60%
	if (i == -1) {
		r -= 5pt
	}

	place(
		dx: 50% + r * x + offx,
		dy: 50% - r * y + offy,
		l2,
	)


}


#let WH = 215.9mm/3 * 75%
#let circleWithoutTitle = box(inset:(bottom:24pt, top:16pt), /*fill:yellow,*/ align(center+horizon,box(height:WH,width:WH)[

	/*
	#place(
		dx:-35pt,
		dy:-35pt,
		key,
	)
	*/

	#drawArc(
		(50%,50%),
		50%,
		0, 360,
	)

	#let i = 0
	#while i < 16 {
		drawLine(points.at(i))
		drawPoint(points.at(i))
		drawLabel(i)
		drawAngle(i)

		i += 1
	}

	#{/*
	#context {
		let k = text(size:10pt, key)
		place(
			dx:50% - measure(k).width/2,
			dy:50% - 0.5em,
			box(fill:white,
				radius:10pt,
				height:1em,
				align(center+horizon, k)
			)
		)
	}
	*/}

]))
#let main = [
	#align(center, grid(columns:2, inset:(right:8pt), [=== The Unit Circle], key))
	#circleWithoutTitle
]
