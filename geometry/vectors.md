Vectors
========================================

<br>

<!-- INDEX -->
* Vectors as a concept
* Representing vectors numerically
* Operations Involving Vectors
  * Multiplying a vector by a scalar
  * Addition/Subtraction and Vectors
  * The Dot Product
  * The Cross Product
  * Hadamard Product or Element-Wise Product
* Returning to ihat, jhat, and khat
* Projections
* Vector Functions

<br>


Vectors as a concept
========================================

Up until learning about vectors,
we are generally used to working with individual numbers.
Some variable `x`, for instance,
usually represents some specific number.
We will introduce the term "scalar"
to describe some mathmatical concept which corresponds to a single number.
So, every natural number is a scalar, as is every real number.
If `x = 10`, x is a scalar.

"Vectors" are not scalars; they are another type of value we can encode.
Fundamentally, rather than having a single value,
a vector has two parts: a *magnitude* (or length) and a *direction*.
Together, we conceptualize vectors as a line (arrow)
pointing from an origin to some destination point.
For example, a vector in the 2d plane
might have magnitude 1 and an angle of `pi/4` from the horizontal.
This would be visualized as an arrow pointing
from the origin to the point `(1/root2, 1/root2)`.

Note that vectors may be visualized with their origin at any point,
depending on the purpose or problem-context.
However, strictly speaking, the vector itself does not encode its origin.
A vector from (0, 0) to (1, 1) is exactly equal to
a vector from (3, 3) to (4, 4).
Its origin point is just something we choose when we are solving a problem.
It is not inherent to the vector itself.
The default, often assumed unless otherwise stated,
is to imagine vectors with their origin at *the space's* origin, (0, 0) in 2d.

Now, since vectors have a direction,
consider that vectors exist for some dimensionality of space.
A 1d vector's direction could only be forwards or backwards;
a 2d vector's direction could be any angle, rotating it around the plane;
a 3d vector could rotate in multiple directions; etc.
So, when using with vectors, we often have to keep track of
the dimensionality of the space we are working in.


Representing vectors numerically
========================================

There are a few ways we can represent vectors numerically.

First, consider the most direct: a length and some angle(s).
A radius and a direction.
This is, in fact, the same as polar coordinates, or spherical coordinates in 3d.
The formulas are shared, naturally.

Alternatively, it is often useful to describe vectors as
the *point* that they would be pointing to in space.
For instance, in the 2d plane, the vector `<10, 0>`
would have a length of 10 and be pointing along the x-axis.
Or in 3d, the vector `<-1, -1, -1>` would have a length of `root3`
and be pointing into the middle of the octant where x, y, and z are negative.
So forth for higher dimensions.

When describing a vector by x, y, and z axes like this,
each respective value is called a "component".
Also, notice that we use angled brackets (`< ... >`) to differentiate
a vector from just any old regular point in space.

If we think of a vector as a point like this,
consider that the *length* of the vector
is just that point's distance from the origin:

	magnitude = distance = root( xx + yy + zz + ... )

There is another notation convention
used to describe vectors in this way.
It is called "vector notation".
We use the `ihat`, `jhat`, and `khat` symbols
(or alternatively bolded i, j, and k letters).
(For my purposes, I am using capital I, J, and K.)

	let I be ihat
	let J be jhat
	let K be khat

	v = < a, b, c > = aI + bJ + cK

There is a very clever reason we do this,
and you can essentially think of ihat, jhat, and khat
as variables to be moved around.
I'll explain later after we lay some other groundwork.

There are two other things to note about notating vectors.

First, the magnitude of a vector `v` is denoted as `|v|`
or equivalently `||v||`.

	v = < a, b, c >
	|v| = root( aa + bb + cc )

Second, a variable which is a vector
is often drawn with a little arrow (->) above its head.
In contexts where this convention is strictly followed,
that variable-letter *without* an arrow over its head
represents the vectors' magnitude.

	if v^[->] = < a, b, c >
	then v = |v|

This convention is especially common in physics.


Operations Involving Vectors
========================================

Multiplying a vector by a scalar
----------------------------------------

First, conceptually, multiplying a vector and a scalar
results in the vectors *length* being multiplied by that scalar.
So, if a vector originally pointed to (0, 3),
and we multiplied it by `1/2`, it would now point to (0, 1.5).
Its length is `1/2` of what it was before.

Let's see that numerically:

	v = < a, b, c > = aI + bJ + cK
	nv = n(aI + bJ + cK) = naI + nbJ + ncK

	|v| = root( aa + bb + cc )
	|nv| = root( nnaa + nnbb + nncc ) = n|v|

Consider that multiplying a vector by `-1`
merely flips the direction in which it is pointing by 180 degrees.


Addition/Subtraction and Vectors
----------------------------------------

What would it mean to add a scalar to a vector?

	v = aI + bJ + cK

	v + 10 = aI + bJ + cK + 10

If we only had 3 dimensions to the space, what would a fourth value represent?
In most contexts, nothing at all.
It's generally an undefined operation.
*Some* conventions say that you should add `10` to `a`, `b`, and `c`,
particularly in computer science contexts,
but that isn't strictly kosher.

So, we couldn't add a scalar and a vector,
but consider that we *can* add two vectors:

	v = aI + bJ + cK
	u = dI + eJ + fK

	v + u = aI + bJ + cK + dI + eJ + fK
	= (a + d)I + (b + e)J + (c + f)K
	= < a+d, b+e, c+f >

Like terms combine, and the addition results in an output vector.

(TODO: what adding vectors means graphically)
(TODO: what subbing vectors means graphically)


The Dot Product
----------------------------------------

There are a few ways that we can try to multiply a vector by another vector.
The first we will look at is the dot product.

	let * be the :dot: symbol

	v = < a, b, c >
	u = < d, e, f >

	v * u = ad + be + cf
	v * u = |v||u|cos(angleBetween)

Notice that the dot product takes two vectors as input and outputs a scalar.

Graphically, the dot product corresponds to
how much two vectors *agree* on which direction they are pointing in.
As such, the dot product of two perpendicular vectors is always zero.


The Cross Product
----------------------------------------

The cross product is a little weirder:

	let :x: be the :cross: symbol

	v = < a, b, c >
	u = < d, e, f >

	v :x: u = < bf - ec, dc - af, ae - db >
	|v :x: u| = |v||u|sin(angleBetween)

Notice that the cross product
takes two vectors as input and outputs another vector.
Notice, also, that the cross product is not commutative.
`v` and `u`, when switched around,
result in the negative of the previous cross-product.

Let's consider the cross product's graphical properties.
If `v :x: u = w`:

1. `w` will be perpendicular to both `u` and `v`.
2. `w` will be `<0,0,0>` if `u` and `v` are collinear.
3. `|w|` is the area of the parallellogram given by `u` and `v`.

Let's think about that first property for a second.
Consider that in a 3d space,
for two intersecting lines which aren't collinear,
there exists some third line which is perpendicular to the other two.
Now, if the first two lines were vectors,
that would mean that there are two possible output vectors,
each the others' negative.
So, how do we know which one is which?

There is a convention for this:
`u` and `v` are always in some 2d plane
(not necessarily the xy plane, just some 2d plane).
Let's say they are not collinear, and we are looking down at the plane.
Let `v :x: u = w`.
Lets say that,
if we were to encircle the origin in a counter-clockwise direction,
we would first encounter `v` and then later `u`.
Then, if `|w| > 0`, `w` will point up out of the plane towards us.

(TODO: right-hand rule)

---

The cross product is derived from the determinant of this matrix:

	|[
	  I, J, K,
	  a, b, c,
	  d, e, f
	]| = v :x: u


Hadamard Product or Element-Wise Product
----------------------------------------

The Hadamard product is perhaps the most intuitive
product between two vectors:

	TODO
	< a, b, c > HadamardProd < d, e, f > = < ad, be, cf >


Returning to ihat, jhat, and khat
========================================

Now, we have the tools we need to understand vector notation.
`ihat`, `jhat`, and `khat` are just constants:

	I = < 1, 0, 0 >
	J = < 0, 1, 0 >
	K = < 0, 0, 1 >

So, when we write:

	v = aI + bJ + cK

we are saying:

	v = a<1,0,0> + b<0,1,0> + c<0,0,1>
	= <a,0,0> + <0,b,0> + <0,0,c>
	= < a, b, c >

Tada!


Projections
========================================

	TODO


Vector Functions
========================================

Consider that a function can output a vector.
Here is a simple one:

	f(t) = <t, tt, ttt>

Oh, would you look at that.
It's a parametric equation!
What we've said up there is equivalent to:

	<t, tt, ttt>  <=>  {
	  x = t
	  y = tt
	  z = ttt
	}

So, rightly, we often manipulate vector functions and reason using them
in much the same way that you would with any parametric equations.

A vector-function with a single input-variable will describe a line,
much like a function of a single variable.
A vector-function with two input-variables will describ a surface,
much like a function of two variables.
And so forth for volumes, etc.

> `f(r,t) = <rcost, rsint, r>` describes a cone, for example.

The advantage of vector functions is like that of parametric equations.
A perfectly-vertical portion of a parametric-surface, for instance,
doesn't break in certain contexts where a straightforward
function-of-two-variables might. (TODO better explanation)

Further, consider that the magnitude of a vector function
tells us the magnitude of the vector that we would get for that `t`.
That is to say, the magnitude of a vector function of `t`
is also a function of `t`,
and the magnitude at `t0` corresponds to output of the function at `t0`.

	v = f(t) = < t, tt, ttt>
	|v| = root( tt + tttt + tttttt ) = t*root(1 + tt + tttt)

