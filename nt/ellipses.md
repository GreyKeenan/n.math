Ellipses
==================================================

<br>

<!-- INDEX -->
* Terms
* Defining an Ellipse
  * With two foci
  * With a 3d cone
  * With a circular directix
* Ellipse forms
* Parts of an Ellipse
* Circles

<br>


Terms
==================================================

* center:
  the point at the center of the ellipse
* circumference:
  the distance around the ellipse.
* co-vertex:
  one of the 2-endpoints of the minor axis.
* diameter:
  a distance from one side of the ellipse to the other.
* eccentricity:
  `= c/a = root(1 - (b/a)^2)`
* focal length /*aka*/ linear eccentricity:
  the distance from the center to a focus.
  `focal_length^2 = major_radius^2 - minor_radius^2`.
* major axis *aka* width:
  the longest diameter.
* major radius *aka* semi-major axis:
  the longest radius.
* minor axis *aka* height:
  the shortest diameter.
* minor radius *aka* semi-minor axis:
  the shortest radius.
* radius:
  a distance from one point on the ellipse to the center.
* the origin: `(0, 0)`.
* vertex:
  * a) one of the four endpoints of the major & minor axes
  * b) specifically one of the two endpoints of the major axis


Defining an Ellipse
==================================================

With two foci
--------------------------------------------------

Elipses can be defined as all points where
the sum of their distances to *two foci* are equal,
and where those foci are equidistant to the center.

Eg, you start with the center.
Pick a distance `d` from the center,
Pick two points (foci) where the distance from them to the center is `d`,
and the distance between each other is `2d`.
Every point where its distance from focus 1 plus the distance from focus 2
equals the distance from one vertex to the other (along the stretched axis)
is a point on the ellipse.

	TODO: explain better

> the foci & the center are all collinear,
  and by necessity they are collinear along the major axis.


With a 3d cone
--------------------------------------------------

	TODO

With a circular directix
--------------------------------------------------

	TODO

<!--

Ellipses can also be defined as
a center, foci, and with a circular directix.

the circle has a radius of the length of the ellipse along the major axis,
and is centered on fous 1.
Draw a straight line from focus 1 (the center) to the circle.
A point on that line where the disitance between that point and focus 2
and the dustance between that point and the circle are the same
is a point that lies on the ellipse.

> I have confused myself with this one.

-->


Ellipse forms
==================================================

An ellipse centered on (0,0) (the origin) has the form:

	xx/aa + yy/bb = 1

where `a` and `b` are the major/minor radii,
and (x,y) is a point on the ellipse.
Specifically, `a` is the horizontal-radius,
and `b` is the vertical-radius.

If the center were different,
you would subtract it from (x,y), of course.
The standard form of an ellipse, then, is:

	(x - h)^2     (y - k)^2
	---------  +  ---------  =  1
	   aa            bb


Parts of an Ellipse
==================================================

* the center
* 4 vertices, two per the major & minor axes

  > or specifically, 2 of which are co-vertices.
* 2 foci

  > to find the foci,
    we first know that they are along the major axis,
    and equidistant from the center.
    So, just calculate the focal length.


Circles
==================================================

A circle is any ellipse where its two axes are the same length.
A circle, then, only has a single diameter/radius,
and its formulas can be simplified compared to general ellipses.

Considering the focal-point definition of an ellipse,
you have a circle when those focal-points are the same.

So, all points along a circle are equidistant to the circle's center.
The standard form of a cirle, then, is just the distance formula

	(x - h)^2 + (y - k)^2 = r^2

where (x,y) is any point on the circle,
(h,k) is the center, and r is the radius.
This is the *standard form* of a circle.

---

	length_of_an_arc = radius * angle_in_radians

