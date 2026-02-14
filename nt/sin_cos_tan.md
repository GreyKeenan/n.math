Sine, Cosine, Tangent notes
==================================================

<br>

<!-- INDEX -->
* What are they?
* sin, cos, tan, and waves
* sin, cos, tan, and triangles
  * The Law of Sines
    * Deriving the law of sines
  * The Law of Cosines
  * The Law of Tangents
* Important values worth remembering
* Identities
  * reflections and rotations
  * addition identities
* Arc-
  * Ranges of the inverses
* Notation details
  * Superscript
* cosecant, secant, cotangent
* Resources

<br>


What are they?
==================================================

> There are various ways to define them ofc.
  `sin`, `cos`, and `tan` are often explained
  in their relation to right triangles,
  but let's see what they are doing without thinking about their
  triangulation applications first.

Consider that, from a starting point,
we can define any other point as an angle and distance from that origin.
This is a vector.

Given an angle, `sin`, `cos`, and `tan`
are functions which give us certain ratios surrounding that vector:

> The starting point is `(0, 0)` ofc.

* the endpoint's `y` : the length of the vector &nbsp; (`sin`)
* the endpoint's `x` : the length of the vector &nbsp; (`cos`)
* the endpoint's `y` : the endpoint's `x`       &nbsp; (`tan`)

> NOTE: the actual length of the vector itself is irrelevant,
  since the ratios hold true for an angle regardless of the length.
  For simplicity, it is often given as `1`.

> also notice: `tan` can have invalid results when dividing by 0.

So, that's all that these functions are doing really.
They are particularly useful for a couple things though:
triangulation and waveforms.


sin, cos, tan, and waves
==================================================

Consider that, because the inputs to the functions are angles,
there is a circular nature to their behavior.
If we were to graph the point `(cos(n), sin(n))` for all possible angles `n`,
it would form a circle with a radius of 1.
This is just the vector rotating around the starting point.

~~~
TODO

y = a:sin:x + b
~~~

<https://www.mathsisfun.com/algebra/amplitude-period-frequency-phase-shift.html>

	f(x) = amplitude * t(period(x + phase_shift)) + vertical_shift

The amplitude is the height/depth of the wave from 0.

The period is how often the wave repeats.
For instance, it is the distance between each x-intercept
(assuming no vertical shift).

Ofc, the phase shift is the x-axis displacement,
and the vertical shift is the y-axis displacement.


sin, cos, tan, and triangles
==================================================

Additionally, these functions are applicable to triangulation.

Consider a right triangle.
`a, b, c=hypotenuse` are its sides, and `A, B, C=90:deg:` are its angles.
The angle `A` is not adjacent to the side `a`, or `a` and `A` are opposite.
So forth for `B` and `C`.

If the vector is the hypotenuse, the ratios are between the triangle's sides.

> This is how the functions are often explained.
  `sin = opposite : hypotenuse`,
  `cos = adjacent : hypotenuse`,
  and `tan = opposite : adjacent`. \
  IMO, it is more helpful to start with the other explanation.

This means that,
given just `A` or `B` and `a`, `b`, or `c`,
we can use those ratios to solve for the lengths of unknown sides.
Or, given just the lengths two sides, we can solve for the angles.
(etc.)

With that in mind, there are a couple useful "laws" to remember.

TODO:
<https://www.youtube.com/watch?v=09tiVxjaghU> and other useful demonstrations \
<https://math.stackexchange.com/questions/4467801/is-it-possible-to-find-the-coordinates-of-a-point-on-the-circumference-of-a-circ> serves as a *dictionary*




The Law of Sines
--------------------------------------------------

~~~
/   a        b        c
: ------ = ------ = ------ = 2R
\  sinA     sinB     sinC
where R is the radius of the triangle's circumcircle.

and of course that also means:

/  sinA     sinB     sinC
: ------ = ------ = ------
\   a        b        c
~~~

The first is handy for finding sides,
and the second for angles,
since it puts the solve-for variable on top.


### Deriving the law of sines

[\*][1]

So, when we have non-right, "oblique" triangles,
recall that we can draw a line from one angle to its opposite side
in order to bisect the triangle and create two right triangles.
Call that line (aka *altitude*) `h`.

Say `h` is opposite `A` in `triangle_1`,
and opposite `B` in `triangle_2`.

~~~
sin(A) = h/b
sin(B) = h/a

h = bsinA = asinB
sinA/a = sinB/b = h/ab
~~~

Repeat the process with a different 'h' to find that `csinA = asinC`
Even though the `h` is different, they are still equal ofc
so you get the law of sines.

~~~
TODO: what about 2R
~~~


The Law of Cosines
--------------------------------------------------

~~~
cc = aa + bb - 2ab:cos:C
bb = aa + cc - 2ac:cos:B
aa = bb + cc - 2bc:cos:A

or in another form:

cosA = (bb + cc - aa) / (2bc)
~~~

This is essentially a generalized form of `aa + bb = cc`
that can work with non-right triangles.
When \<the angle used in the law\> is 90,
`cos(x) = 0` leaving just `cc = aa + bb`.
Of course, for the alternates where the sides are rearranged,
setting an angle other than `C` to 90 would
make a side other than `c` the hypotenuse.

~~~
TODO: deriving the law of cosines?

https://www.youtube.com/watch?v=pGaDcOMdw48
~~~


The Law of Tangents
--------------------------------------------------

~~~
/  a - b     tan(1/2)(A - B)
: ------- = -----------------
\  a + b     tan(1/2)(A + B)
~~~

~~~
TODO: deriving the law of tangents
~~~


Important values worth remembering
==================================================

This is sometimes called the "first quadrant".

TODO: explain *why* it is important to remember

~~~
sin(pi/2) = cos(0)    = 1
sin(pi/3) = cos(pi/6) = root(3) / 2
sin(pi/4) = cos(pi/4) = 1/root(2)
sin(pi/6) = cos(pi/3) = 1/2
sin(0)    = cos(pi/2) = 0

sin(1.5pi) = cos(pi)  = -1

tan(pi/4) = 1
tan(pi/2) = DIVBYZERO
tan(0)    = 0
~~~


Identities
==================================================

Using these identities,
we can solve "*sinuosidal equations*" with algebra
where there are multiple solutions.
`TODO: explain this better.`


The Pythagorean identities
--------------------------------------------------

	(sinx)^2 + (cosx)^2 = 1
	(tanx)^2 + 1 = (secx)^2
	(cotx)^2 + 1 = (cscx)^2

These are derived from the relationships between these functions,
as explained in their triangle-definitions,
and the pythagorean theorem.

For example:

	sinA = a/c
	cosA = b/c

	aa + bb = cc
	(aa + bb)/cc = 1

	sinA^2 + cosA^2
	aa/cc  + bb/cc
	(aa + bb)/cc = 1


reflections and rotations
--------------------------------------------------

Visualizing the functions on the unit circle,
we see that some arguments are equivalent to each other.
These are the rules for finding equivalent arguments.

~~~
cos(x) = cos(-x)
cos(x) = -cos(pi - x)
  cos(x) = cos(2pi - x)
cos(x + pi) = -cos(x)

sin(x) = sin(pi - x)
sin(-x) = -sin(x) = sin(x + pi)

sin(x) = cos(x + pi/2)
cos(x) = sin(x + pi/2)

tan(x) = tan(x + pi)
tan(-x) = -tan(x) = tan(pi - x)
tan(x) = -1/tan(x + pi/2)
~~~

> also, remember that its an angle, so you can `+/-` `2pi` or `360_degrees`.
  This is important for algebra with these funcs.

> I'm probably missing some.
  TODO: boil down to fewer rules?

TODO: <https://www.youtube.com/watch?v=tzQ7arA917E> \
TODO: <https://www.youtube.com/watch?v=k_wJsio68D4> \
TODO: <https://www.youtube.com/watch?v=h-TPSylHrvE>

examples of using these properties:
~~~
cos( (5pi)/3 )
cos( (5pi)/3 - 2pi )
cos( -pi/3 )
cos( pi/3 )

sin( (5pi)/3 )
sin( (5pi)/3 - 2pi )
sin( -pi/3 )
-sin( pi/3 )

cos( (4pi)/3 )  = -cos( pi/3 )
~~~


addition identities
--------------------------------------------------

TODO: <https://www.youtube.com/watch?v=a70-dYvDJZY>

TODO: organize this

~~~
sin(a + b) = sin(a)cos(b) + sin(b)cos(a)          <----------
sin(a - b) = sin(a)cos(b) - sin(b)cos(a)
	sin(a - b) = sin(a)cos(-b) + sin(-b)cos(a)

cos(a + b) = cos(a)cos(b) - sin(a)sin(b)        <----------
cos(a - b) = cos(a)cos(b) + sin(a)sin(b)
	cos(a - b) = cos(a)cos(-b) - sin(a)sin(-b)

sin(a)^2 + cos(a)^2 = 1             <--------
sin(a)^2 = 1 - cos(a)^2
	(aa + bb)/hh = 1?
	yes, because aa + bb = hh ofc
	TODO explain

cos(2a) = cos(a + a)
 = cos(a)^2 - sin(a)^2
 = cos(a)^2 - (1 - cos(a)^2)
 = 2cos(a)^2 - 1
->
2cos(a)^2 = cos(2a) + 1
cos(a)^2 = (cos(2a) + 1)/2  // the "power reduction" identity

( and you can repeat that process to derive sin(2a) ):
TODO
	sin(a)^2 = (1 - cos(2a))/2

	sin(2a) = sin(a + a) = 2sin(a)cos(a)


tan(x) = sinx/cosx, of course, so:
tan(x + y) = sin(x + y)/cos(x + y)
which can simplify to: (TODO)
 = (tanx + tany) / (1 - tanxtany)                 <--------------

~~~

For examples of use, see `ex/khan/...`

> TODO: proofs
>
> * <https://www.youtube.com/watch?v=R0EQg9vgbQw>
> * <https://www.youtube.com/watch?v=0VBQnR2h8XM>
> * <https://www.youtube.com/watch?v=nUlElr4LXz8>

> TODO: more ways to use angle addition identities
>
> * <https://www.youtube.com/watch?v=sI789G6FBb4>
> * <https://www.youtube.com/watch?v=yV4Xa8Xtmrc>
> * <https://www.youtube.com/watch?v=4OEeVLo5V1o>



Arc-
==================================================

Arc-sin, arc-cos, and arc-tan are just a fancy way of saying
the inverse of those functions. \
(See [functions.md](functions.md))

They are alternatively written as `sin^(-1)(x)`.


Ranges of the inverses
--------------------------------------------------

Now, ofc, sin, cos, and tan aren't invertible functions,
so we need to restrict their domains.

> The "*principal value*" is the name for
  the solution to the inverse functions
  that meets the restricted-criteria.
  Aka, if there are multiple solutions to the theoretical
  complete inverse of sin/cos/tan, the principal value
  is the one which is returned by arc-sin/cos/tan.

Ranges:

* `arcsin`: `[-pi/2, pi/2]`

  > quadrants 1 and 4 only.

  > Notice, this always gives the acute angle.
    To get the obtuse, subtract it from 180.

* `arccos`: `[0, pi]`

  > quadrants 1 and 2 only.

* `arctan`: `(-pi/2, pi/2)`

  > quadrants 1 and 4,
    excluding verticals since `tan(pi/2) = UNDEFINED`

> when trying to remember which is which btwn `arcsin` and `arccos`,
  consider whether `f(pi) = f(0) or f(pi/2) = f(-pi/2)`.


Notation details
==================================================

Superscript
--------------------------------------------------

Typically, positive superscript after a function
means composition, where the function is called on itself.
However, for these functions,
the same notation is often used to show exponentiation
of the results of the function instead.
How annoying.

> its because the function-composition notation came later.


cosecant, secant, cotangent
==================================================

These are the respective reciprocals of
sine, cosine, and tangent.
They are less-used, but share properties ofc.

> yes, cosecant is inverse of sine,
  and secant is inverse of cosine.

~~~
csc(x) = cosecant
sec(x) = secant
cot(x) = cotangent
~~~

Note: because cos & sin can evaluate to 0,
some csc & sec inputs result in `undefined`.


TODO: misc definitions from khan
==================================================

Sinusoidal equations are any equations containing sine/cosine.
sinusoidal models are models that have that, duh.





---

Resources
==================================================

[1]: https://math.libretexts.org/Courses/Monroe_Community_College/MTH_165_College_Algebra_MTH_175_Precalculus/07%3A_Further_Applications_of_Trigonometry/7.01%3A_Non-right_Triangles_-_Law_of_Sines
\[1]: <https://math.libretexts.org/Courses/Monroe_Community_College/MTH_165_College_Algebra_MTH_175_Precalculus/07%3A_Further_Applications_of_Trigonometry/7.01%3A_Non-right_Triangles_-_Law_of_Sines>

[2]: https://youtu.be/Tt_ATh5mCGw
\[2]: <https://youtu.be/Tt_ATh5mCGw>
