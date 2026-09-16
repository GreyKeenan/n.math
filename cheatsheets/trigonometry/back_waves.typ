#import "utilities.typ":*


#let s = 20pt
#let w = 2.75
#let x_f = 4*calc.pi / w
#let f(x) = { return - calc.sin(w*x) }

#let first_peak = calc.pi/(2*w)
#let second_peak = calc.pi/(2*w) + 2*calc.pi/w

#let phaseColor = red

#let m = 2pt


#let drawBaseWave(showA:true, periodOffset:0pt) = {
	drawCurve(f, (0, x_f), (0%,50%), s, step:0.1)

	if showA {

		//upper amplitude measure
		place(line(start:(-1em,50%), end:(-1em,0%)))
		place(line(start:(-1em-m,50%), end:(-1em+m,50%)))
		place(line(start:(-1em-m,0%), end:(-1em+m,0%)))

		//lower amplitude measure
		let lowerOffset = 5pt
		place(line(start:(-1em + lowerOffset,50%), end:(-1em + lowerOffset,100%)))
		place(line(start:(-1em-m + lowerOffset,100%), end:(-1em+m + lowerOffset,100%)))
		place(line(start:(-1em-m + lowerOffset,50%), end:(-1em+m + lowerOffset,50%)))

		place(
			dx:-2em,
			dy:25% - 0.25em,
			$A$,
		)
		place(
			dx:-2em + lowerOffset,
			dy:75% - 0.25em,
			$A$,
		)
	
	}

	//period measure
	place(line(
		start:(
			first_peak * s,
			-1em - periodOffset,
		),
		end:(
			second_peak * s,
			-1em - periodOffset,
		),
	))
	place(line(
		start:( first_peak*s, -1em + m - periodOffset),
		end:( first_peak*s, -1em - m - periodOffset),
	))
	place(line(
		start:( second_peak*s, -1em + m - periodOffset),
		end:( second_peak*s, -1em - m - periodOffset),
	))

	place(
		dx:(first_peak + calc.pi/w)*s - 1.25em,
		dy:-2em - periodOffset,
		"period",
	)

}


#let wave_hshift = block(inset:(left:2em, top:2em), block(width:x_f*s, height:2*s)[

	#let hshift = 1/2

	#place(line(start:(0%,50%), end:(100%,50%)))
	#drawCurve(f, (hshift, x_f), (-hshift * s,50%), s, step:0.1, stroke:(paint:phaseColor, thickness:1pt, dash:"dashed"))
	#drawBaseWave()

	#place(line(start:((x_f - hshift)*s, 25%), end:(x_f*s, 25%), stroke:red))
	#place(line(start:((x_f - hshift)*s, 25% - m), end:((x_f - hshift)*s, 25% + m), stroke:red))
	#place(line(start:(x_f*s, 25% - m), end:(x_f*s, 25% + m), stroke:red))
	#place(
		dx:(x_f - hshift/2)*s - 0.25em,
		dy:25% - 1em,
		text(fill:red, $h$),
	)


])

#let wave_vshift = block(inset:(left:2em, top:2em + 6pt), block(width:x_f*s, height:2*s)[

	#let vshift = s/2

	#place(line(start:(0%,50%), end:(100%,50%)))
	#place(line(start:(0%,50% - vshift), end:(100%,50% - vshift), stroke:(paint:blue, dash:"dashed", cap:"round")))
	#drawCurve(f, (0, x_f), (0%,50% - vshift), s, step:0.1, stroke:(paint:blue, thickness:1pt, dash:"dashed"))
	#drawBaseWave(showA:false, periodOffset:vshift)

	#place(line(start:(100% + 0.5em, 50%), end:(100% + 0.5em, 50% - vshift), stroke:blue))
	#place(line(start:(100% + 0.5em - m, 50%), end:(100% + 0.5em + m, 50%), stroke:blue))
	#place(line(start:(100% + 0.5em - m, 50% - vshift), end:(100% + 0.5em + m, 50% - vshift), stroke:blue))
	#place(
		dx:100% + 1em,
		dy:50% - vshift/2 - 0.35em,
		text(fill:blue, $k$),
	)

	//upper amplitude measure
	#place(line(start:(-1em,50% - vshift), end:(-1em,0% - vshift), stroke:blue))
	#place(line(start:(-1em-m,50% - vshift), end:(-1em+m,50% - vshift), stroke:blue))
	#place(line(start:(-1em-m,0% - vshift), end:(-1em+m,0% - vshift), stroke:blue))

	//lower amplitude measure
	#let lowerOffset = 5pt
	#place(line(start:(-1em + lowerOffset,50% - vshift), end:(-1em + lowerOffset,100% - vshift), stroke:blue))
	#place(line(start:(-1em-m + lowerOffset,100% - vshift), end:(-1em+m + lowerOffset,100% - vshift), stroke:blue))
	#place(line(start:(-1em-m + lowerOffset,50% - vshift), end:(-1em+m + lowerOffset,50% - vshift), stroke:blue))

	#place(
		dx:-2em,
		dy:25% - 0.25em - vshift,
		//text(fill:blue, $A$),
		$A$,
	)
	#place(
		dx:-2em + lowerOffset,
		dy:75% - 0.25em - vshift,
		//text(fill:blue, $A$),
		$A$,
	)


])

