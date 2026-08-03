
#import "vector.typ" as vec
#import "graph2d.typ" as gr2
#import "graph3d_old.typ" as gr3
#import "graph3d.typ" as gr4


#square(width:200pt)[

	#let tamp = gr3.makeTamper(
		N:(-2, -1, -1),
		scale2d:9%,
		origin:(50%,80%),
	)

	#gr3.drawAxes(tamp,
		lengths:(3,3,9),
		backlengths:0,
		grid:none,
		//gridSteps:1,
		labelAxisOffsets:0.5,
	)

	#let r(t) = (
		calc.cos(t),
		calc.sin(t),
		t/5,
	)
	#gr3.drawCurve(tamp, r, interval:(-5, 40), steps:200, skip:0)

	#gr3.plot(tamp, r(40), label:auto)

]

#square(width:200pt)[

	#let view = gr2.view(
		frame:(100%, 50%),
		offset:(0%, 25%),
		x:(-10, 10),
		y:(-5, 5),
	)

	#gr2.drawGrid(view)
	#gr2.drawCurve(view, calc.sin, stroke:blue)
	#gr2.drawCurve(view, calc.cos, stroke:red)

]

#square(width:200pt)[

	#let view = gr4.view(
		normal:(-3, -2, -1),
		scale2d:10%,
		//intervals:(0,5),
	)

	#gr4.drawGrid(view, xy:none)

	#let r(t) = (
		t*calc.cos(t),
		t*calc.sin(t),
		t/5,
	)
	#gr4.drawCurve(view, r, interval:(-5, 7), steps:90, skip:0.1)

	//#let R(s, t) = vec.add( r(t), (s, 0, 0) )
	//#gr4.drawSurface(view, R, intervals:((0,2), (-5,7)), steps:40)

	//#gr4.polygon(view, ((0,0), (1,0), (3,2), (0,1)), stroke:red)

	#gr4.plot(view, r(6), label:auto)
 
	#gr4.drawAxisLabels(view)
]
