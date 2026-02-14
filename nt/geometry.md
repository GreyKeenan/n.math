
~~~
TODO:
scrap this file and rewrite the stuff separately
~~~

Geometry
==================================================

<br>

<!-- INDEX -->
* Lines
* Euclidean Distance
* Vectors

<br>


Lines
==================================================

Lines are just a series of points.

Straight lines can be represented with the form:
~~~
y = mx + b
aka
y = slope * x + y_intercept

slope = rise/run
~~~


Euclidean Distance
==================================================

Take a right triangle.
The longest side (not touching the right angle)
has a length of `c`.
The other two sides have lengths of `a` and `b` respectively.
Then:
~~~
aa + bb = cc
~~~

With that, we can determine distance from 1 point to another.
~~~
:vT:(aa + bb) = c

distance_between((x[1], y[1]), (x[2], y[2]))
 = :vT:((x[1] - x[2])^2 + (y[1] - y[2])^2)
~~~


Vectors
==================================================

Vectors are just coordinates relative to a certain point,
which becomes their (0,0).
So, in the distance formula above, we are really using vectors
because we subtract (x[2], y[2]) from (x[1], y[1]).

Also, yes, in a sense, all coordinates are vectors.


TODO
==================================================

* polygons
  * triangles triangles triangles
    * triangulation
    * barycenter
  * quadrilaterals
* elipses
* for shapes
  * areas
  * perimeters
* the visual lexicon of geography. \
  Can I even represent that textually?
