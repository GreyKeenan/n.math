Complex Numbers
==================================================

<br>

<!-- INDEX -->
* i
* Rectangular Form
* The complex plane
  * Plotting complex numbers
  * distance and midpoint
  * Absolute Value of Complex Numbers
  * Angle of complex numbers
  * Rectangular form from angle and abs
* Conjugates
  * Factoring sum-squares with `i`
* Polar Form
  * Exponential Form
* Other useful Behavior
  * visualizing complex multiplications as rotations + scaling
* Exercises
  * `z^p = x`

<br>


TODO: relation to the "fundamental theorem of algebra"


i
==================================================

`i` is the imaginary number.
Whats important to remember is:

* `i * i = -1`
* `i * -i = 1`
* `-i * -i = -1`

TODO: explain further


Rectangular Form
==================================================

Complex numbers can be considered in the form:
~~~
a + bi
~~~

where `i` is the imaginary unit,
`a` is the "real" part,
and `b` is the "imaginary" part.


The complex plane
==================================================

The real-number-line gives irrational numbers validity.
Sure, we don't know the *exact* value of `root(2)`,
but it does exist at a definitive location between other numbers
on the number line.

Similarly, the complex plane gives complex numbers validity.
Each complex number has an exact point on the complex plane.
Calling them "imaginary" is really a misnomer.

The complex number plane takes the 1-d number *line*
and expands it into a 2-d number *plane*.


Plotting complex numbers
--------------------------------------------------

So, how do we place complex numbers on the plane?

Consider "rectangular form".
When plotting complex numbers on a "complex plane",
we plot the "real" part as the x-axis-value
and the "imaginary" part as the y-axis-value.

> `1 + 2i` *on the complex plane*
  is like to `(1, 2)` on the cartesian plane.


distance and midpoint
--------------------------------------------------

Then, we can find the "distance" between complex numbers
(and the midpoint etc)
the same way we would on the cartesian plane.
(euclidian distance and avg)


Absolute Value of Complex Numbers
--------------------------------------------------

So, on the number line,
the abs value of any number is its distance from `0`.
On the complex *plane*, then,
the abs value of any complex number is its distance from `(0, 0)`.

(confusingly), the absolute value of a complex number
is also known as its "*modulus*" or "*magnitute*".


Angle of complex numbers
--------------------------------------------------

You can find the angle of a complex number
by the slope of the line
passing through the number & `(0, 0)`.

`atan(slope) = angle +/- npi`

Remember that `atan`'s range is restricted to the first and fourth quads.
If the complex number is in the 2nd/3rd quads
(if the `x`/`real part` is negative)
you will need to add/subtract pi to get the accurate angle.

~~~
atan(imaginary_part / real_part) +/- pi
~~~


Rectangular form from angle and abs
--------------------------------------------------

so with those two things in mind,
we can derive a complex number
given its angle and absolute value.

~~~
a^2 + b^2 = d^2
dd - aa = bb
+/-root(dd - aa) = b

arctan(b/a) = r
tanr = b/a
atanr = b

atanr = +/-root(dd-aa)
aatanrtanr = dd - aa
aa(tanrtanr + 1) = dd
aa = dd / (tanrtanr + 1)

a = +/- root(dd / (tanrtanr + 1))

(again, remember to select the right solution based on
which quadrant the angle falls in.)
~~~

(also, if the angle is pi, pi/2, pi/4 we know one of the coords
because its on the axis)


Conjugates
==================================================

The conjugate of `a + bi` is `a - bi`

The conjugate is useful for algebra,
such as for simplifying fractions.

consider:
~~~

(a + bi) + (a - bi) = 2a
(a + bi)(a - bi) = aa - bbii = aa + bb

/  a + bi
: --------
\  x + yi
/  (a + bi)(x - yi)
: ------------------
\  (x + yi)(x - yi)
/  ax + -ayi + bxi + -byii
: -------------------------
\  xx + yy
/  ax + -ayi + bxi + by
: ----------------------
\  xx + yy

~~~


Factoring sum-squares with `i`
--------------------------------------------------

Recall that `xx - yy = (x-y)(x+y)`.
What about `xx + yy`?
When I first learned about xx - yy,
I tried pretty hard to find an equivalent for xx + yy on my own.
Well, with `i`, factoring `xx + yy` is trivial.

~~~
xx + yy = xx - yyii = (x - yi)(x + yi)

another ex:
x^4 + 10x^2 + 9
(x^2 + 1)(x^2 + 9)
(x - i)(x + i)(x - 3)(x + 3)
~~~


Polar Form
==================================================

So far we have:
~~~

a + bi
magnitude = (aa + bb)^(1/2)
angle = atan(b/a) +/- pi
~~~

Now, consider:
~~~
magnitude * cos(angle) = a
magnitute * sin(angle) = b
~~~

Polar form is:
~~~
magnitude(cos(angle) + sin(angle)i)
~~~

That's all it is.

> <https://www.youtube.com/watch?v=8RasCV_Lggg>

For multiplication of two complex numbers in polar form:
~~~
m(cosa + isina) * n(cosd + isind)
 = mn(cos(a + d) + isin(a + d))
~~~

For division:
~~~
m(cosa + isina) / n(cosd + isind)
 = m/n * (cos(a - d) + isin(a - d))
~~~

TODO: derive these

It follows, then, for exponentiation:
~~~
m(cosa + isina)^x = m^x(cos(xa) + isin(xa))
~~~


Exponential Form
--------------------------------------------------

~~~
magnitude * e^(i * angle)
~~~

It contains the same information as polar form,
just more compact**??**

> <https://www.youtube.com/watch?v=N0Y8ia57C24>
>
> why thinking of it as exponential form is useful


Other useful Behavior
==================================================

Notice that multiplying a complex number by `i`
switches the real and imaginary parts
and flips the sign of the previously-imaginary part.
~~~
i(a + bi) = ai - b
~~~


visualizing complex multiplications as rotations + scaling
--------------------------------------------------

Polar form is useful here.
When multiplying a point by another complex number,
they are scaled by `magnitude` and rotated by `angle`.

> <https://www.khanacademy.org/math/precalculus/x9e81a4f98389efdf:complex/x9e81a4f98389efdf:complex-mul/a/visualizing-complex-multiplication>


Exercises
==================================================

`z^p = x`
--------------------------------------------------

Dont forget that real numbers
are just a subset of complex numbers
where the imaginary part is 0.

~~~
z^p = x
z^p = x + 0i
z^p = x(1 + 0i)
z^p = x(cos(0) + sin(0)i)
z = (x(cos(0) + sin(0)i))^(1/p)
	~~z = x^(1/p)(cos(0) + sin(0)i)~~


z^p = x
z = x^(1/p)
~~~

Hm, alright, lets see the specific problem.

~~~
z^3 = 27

Find 2 solutions other than z = 3.

a. 3(cos90 + isin60)
b. 3(cos120 + isin120)
c. 3(cos180 + isin180)
d. 3(cos240 + isin240)

---

rectangular form of each:

a = (3/2 + i3root(3)/2)
b = (3/2 - i3/2)
c = (0 + 3i)
d = (-3/2 - i3root(3)/2)

cube each:

a. 27(cos270 + isin180)
b. 27(cos0 + isin0)
c. 27(cos180 + sin180)
d. 27(cos0 + isin0)


Okay, so, clearly b and d are the solutions,
but how would I have found them?

z^p = x
z = x^(1/p)(cos(a) + sin(a)i);
	NO:
		+/- a + n2pi = acos(1)
		a + n2pi = asin(0)
		pi - a + n2pi = asin(0)

n :ce: {ZZ}
3a + n2pi = 0

a = n2pi/3    <---- duh. Other angles can be equivalent to 0:deg: after cubed

another way to put it is:
a = 360n/3 = 120n
a = 0, 120, 240, ...

~~~
