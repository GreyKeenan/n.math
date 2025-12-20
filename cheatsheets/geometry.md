Geometry Cheat-Sheet
========================================

<br>

<!-- INDEX -->
* [Two-Dimensional](#twodimensional)
  * [Angles](#angles)
  * [Polygons](#polygons)
  * [Triangles](#triangles)
  * [Quadrilaterals](#quadrilaterals)
  * [Rectangles](#rectangles)
  * [Circles](#circles)
  * [Ellipses](#ellipses)
* [Three-Dimensional](#threedimensional)
  * [Prisms](#prisms)
  * [Spheres](#spheres)
  * [Cones and Pyramids](#cones-and-pyramids)
* [Polar Coordinates](#polar-coordinates)
* [Calculus](#calculus)
  * [Solids of Revolution](#solids-of-revolution)
  * [Centroids](#centroids)

<br>


Two-Dimensional
----------------------------------------

#### Angles

* obtuse angle > 90 degrees
* right angle = 90 degrees
* acute angle < 90 degrees

	pi radians = 180 degrees
	angle = arctan(y/x)

#### Polygons

	sumOfAngles = (numberOfSides - 2) * 180 degrees

#### Triangles

* equilateral: all sides equal length
* right: has a 90 degree angle
* isosceles: symmetrical down the middle

> see [the Trig Cheatsheet](trigonometry)

	hypotenuse^2 = opposite^2 + adjacent^2

	areaOfRightTriangle = (1/2)(base)(height)

	TODO: centers


#### Quadrilaterals

* parallelogram: two pairs of parallel sides
  * rhombus: parallelogram with all sides equal
  * rectangle: all angles 90 degrees
    * square: rectangle with all sides euqal
* trapezoid: two sides parallel
  * isosceles trapezoid: symmetrical down the middle
* kite: no sides parallel, two pairs with equal sides
* irregular

	TODO

#### Rectangles

	area = base * height
	perimeter = 2base + 2height

#### Circles

	Standard Form: (x - h)^2 + (y - k)^2 = radius^2

	radius = diameter / 2

	area = pi * radius^2
	circumference = 2pi * radius

	lengthOfArc = radius * angleInRadians
	areaOfWedge = radius^2 * angleInRadians / 2

#### Ellipses

	TODO


Three-Dimensional
----------------------------------------

#### Prisms

	volume = area * height
	surfaceArea = perimeter * height + 2area

#### Spheres

	volume = (4pi/3) * radius^3
	surfaceArea = 4pi * radius^2

#### Cones and Pyramids

	volume = areaOfBase * height / 3

	coneSurfaceArea = pi * radius^2  +  pi * radius * hypotenuse
	pyramidSurfaceArea = areaOfBase + numberOfSides * areaOfTriangle


Polar Coordinates
----------------------------------------

	let t be theta

	r = functionOf(t)

	y = rsint
	x = rsint

	By the chain rule:
	dy/dt = (dr/dt)sint + rcost
	dx/dt = (dr/dt)cost - rsint

	areaOfWedgeOfCurve = (1/2)Srrdt
	arclength = Sroot(rr + (dr/dt)^2)dt


Calculus
----------------------------------------

	slope = dy/dx

	areaUnderCurve = S(y)dx
	areaBetweenCurves = S(y_1 - y_2)dx

	arcLength = Sroot(1 + (dy/dx)^2)dx

	volume = S(areaInZYPlane)dx
	surfaceArea = C + S(perimeterInZYPlane)root(1 + (dy/dx)^2)dx


### Solids of Revolution

Washer Method

	pi * S(radius^2)d(_)

Cylindrical Shells

	2pi * S(radius * height)d(_)

Surface Area

	2pi * S(radius * root(1 + (dy/dx)^2))dx


### Centroids

	TODO
