
#import "vector.typ" as vec
#import "graph2d.typ" as gr2
#import "graph3d.typ" as gr3


#block(width:200pt, height:100pt)[

	#let view = gr2.view(
		x:(-10, 10),
		y:(-5, 5),
	)

	#gr2.drawGrid(view)
	#gr2.drawAxes(view)

	//#let f(x) = calc.sin(10 * x)
	#gr2.drawCurve(view, calc.sin, stroke:blue)
	#gr2.drawCurve(view, calc.cos, stroke:red)

	#gr2.plot(view, (1,-1), label:auto)

]

#box(width:200pt, height:200pt)[

	#let b = 30

	#let view = gr3.view(
		//normal:-1,
		intervals:( (-b,b), (-b,b), (0, b) ),
		//intervals:b,
		//makeSpaceForGrid:true
	)
	//#gr3.drawGrid(view)
	#gr3.drawAxes(view)

	#let r(t) = (
		t*calc.cos(t),
		t*calc.sin(t),
		t,
	)
	#gr3.drawCurve(view, r, interval:(-0/1.5, b/1.5), steps:200)

	//#let R(s, t) = vec.add( r(t), (s, 0, 0) )
	//#gr3.drawSurface(view, R, intervals:((0,2), (-5,7)), steps:40)
	//#gr3.polygon(view, ((0,0), (1,0), (3,2), (0,1)), stroke:red)
	//#gr3.plot(view, r(6), label:auto)
 
	#gr3.drawAxisLabels(view)

]
