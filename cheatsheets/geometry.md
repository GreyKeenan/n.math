Geometry Cheat-Sheet
========================================

> TODO

<br>

<!-- INDEX -->
* [Polar Coordinates](#polar-coordinates)
* [Calculus](#calculus)
  * [Solids of Revolution](#solids-of-revolution)

<br>


Polar Coordinates
========================================

	let t be theta

	r = functionOf(t)

	y = rsint
	x = rsint

	By the chain rule:
	dy/dt = (dr/dt)sint + rcost
	dx/dt = (dr/dt)cost - rsint

	areaOfPizzaSlice = (1/2)Srrdt
	arclength = Sroot(rr + (dr/dt)^2)dt


Calculus
========================================

	slope = dy/dx

	areaUnderCurve = S(y)dx
	areaBetweenCurves = S(y_1 - y_2)dx

	arcLength = Sroot(1 + (dy/dx)^2)dx

	volume = S(areaInZYPlane)dx
	surfaceArea = S(perimeterInZYPlane)root(1 + (dy/dx)^2)dx


Solids of Revolution
----------------------------------------

Washer Method

	(pi)Srrd(_)

Cylindrical Shells

	(2pi)Srhd(_)

Surface Area

	(2pi)S(y)root(1 + (dy/dx)^2)dx

