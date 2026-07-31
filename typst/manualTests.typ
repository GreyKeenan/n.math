
#import "vector.typ" as vec
#import "graph3d.typ" as gr3


#let tamp = gr3.makeTamper(
	N:(-2, -1, -1),
	scale2d:9%,
	origin:(50%,80%),
)

#let r(t) = (
	calc.cos(t),
	calc.sin(t),
	t/5,
)

#square(width:200pt)[

	#gr3.drawAxes(tamp, lengths:(3,3,9))
	#gr3.drawAxes(tamp, lengths:-2)//, strokes:(paint:gray, dash:"dashed"))
	#gr3.drawAxesLabels(tamp, lengths:(3,3,9), extras:0.5)

	#gr3.drawCurve(tamp, r, interval:(-5, 40), steps:200, skip:0.3)

	#gr3.plot(tamp, r(40), label:auto)

	//#gr3.plot(tamp, r(20), label:auto, fill:blue)
	//#gr3.plot(tamp, r(17), label:auto, fill:blue)

	#gr3.plot(tamp, (1,1,1))

]
