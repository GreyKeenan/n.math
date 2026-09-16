
#import "utilities.typ": *

// nonnegative
#let pA = (0, 0) // leave at 0,0
#let pB = (0.7, 1.7)
#let pC = (2, 1)

#let s = 50pt
#let scale(p) = (p.at(0) * s, p.at(1) * s)
#let pAs = scale(pA)
#let pBs = scale(pB)
#let pCs = scale(pC)

#let xA = pA.at(0)
#let yA = pA.at(1)
#let xB = pB.at(0)
#let yB = pB.at(1)
#let xC = pC.at(0)
#let yC = pC.at(1)

#let W = calc.max( xA, xB, xC )
#let H = calc.max( yA, yB, yC )

// I cheated: https://www.triangle-calculator.com/?what=vc&a=0&a1=0&3dd=3D&a2=&b=1&b1=1&b2=&c=3&c1=0&c2=&submit=Solve&3d=0

#let lengA = calc.sqrt( (xB - xC)*(xB - xC) + (yB - yC)*(yB - yC) )
#let lengB = calc.sqrt( (xA - xC)*(xA - xC) + (yA - yC)*(yA - yC) )
#let lengC = calc.sqrt( (xA - xB)*(xA - xB) + (yA - yB)*(yA - yB) )

// in degrees
#let angA = calc.acos( (lengB*lengB + lengC*lengC - lengA*lengA)/(2*lengB*lengC) ).deg()
#let angB = calc.acos( (lengA*lengA + lengC*lengC - lengB*lengB)/(2*lengA*lengC) ).deg()
#let angC = calc.acos( (lengA*lengA + lengB*lengB - lengC*lengC)/(2*lengA*lengB) ).deg()


#let circD = 2*( xA*(yB - yC) + xB*(yC - yA) + xC*(yA - yB) )
#if (circD == 0) { panic("these points do not form a triangle!") }
#let circx = (1/circD)*( (xA*xA + yA*yA)*(yB - yC) + (xB*xB + yB*yB)*(yC - yA) + (xC*xC + yC*yC)*(yA - yB) )
#let circy = (1/circD)*( (xA*xA + yA*yA)*(xC - xB) + (xB*xB + yB*yB)*(xA - xC) + (xC*xC + yC*yC)*(xB - xA) )
#let circumcenter = (circx, circy)
#let circumradius = lengA / (2 * calc.sin(angA * calc.pi/180))


#let putline(a, b, stroke:black) = place(line(
	stroke:stroke,
	start:a,
	end:b,
))
#let putlabel(p, text) = place(
	center+horizon,
	dx: p.at(0) - W*s/2,
	dy: p.at(1) - H*s/2,
	text
)

// to > from

#let triangle = block(height:H*s, width: W*s)[

// circumcircle
/*
#let circColor = gray
#drawArc(scale(circumcenter), circumradius*s, 0, 360, stroke:circColor)
#place(dx:circx*s, dy:circy*s, line(length:circumradius*s, angle:180deg, stroke:circColor))
#let pr = 2pt
#place(
	dx: circx*s - pr,
	dy: circy*s - pr,
	circle( radius:pr, fill:circColor ),
)
#putlabel(
	add2(scale(add2( circumcenter, polar_deg(circumradius * 7/10, 180) )), (0em, -0.5em) ),
	//text(fill:circColor, $r$),
	$r$,
	//$<- r ->$,
	//$#text(fill:circColor, $<-$) r #text(fill:circColor, $->$)$,
)
*/

// edges
#putline(pAs, pBs, stroke:ccC)
#putline(pBs, pCs, stroke:aaC)
#putline(pCs, pAs, stroke:bbC)
#putlabel(
	add2(avg2(pAs, pCs), (0.5em, -0.5em)),
	bb,
)
#putlabel(
	add2(avg2(pAs, pBs), (-0.5em, 0.5em)),
	cc,
)
#putlabel(
	add2(avg2(pBs, pCs), (0.5em, 0.5em)),
	aa,
)

// angle arcs
#let R = 0.3
#let d
#if (xA == xC) {
	d = 90 // does this work, though?
	panic("untested case")
} else {
	d = calc.atan( (yA - yC)/(xA - xC) ).deg()
}
#drawArc( pAs, R*s, d, d + angA, stroke:0.5pt + aaC)
#drawArc( pBs, R*s, 180 + d + angA, 180 + d + angA + angB, stroke:0.5pt + bbC)
#drawArc( pCs, R*s, 270 - (90 - d) - angC, 270 - (90 - d), stroke:0.5pt + ccC)

// angle labels
#let R2 = R*1.5
#putlabel(
	scale(add2(pA, polar_deg(R2, d + angA/2))),
	AA,
)
#putlabel(
	scale(add2(pB, polar_deg(R2,
		180 + d + angA + angB/2,
	))),
	BB,
)
#putlabel(
	scale(add2(pC, polar_deg(R2,
		270 - (90 - d) - angC/2,
	))),
	CC,
)

]
