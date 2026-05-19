Vectors
========================================

<br>

<!-- INDEX -->
* Vectors as a concept
* Representing vectors numerically
* Basic Operations
  * Multiplying a vector by a scalar
  * Addition/Subtraction and Vectors
  * Returning to ihat, jhat, and khat
* Special Products
  * The Dot Product
  * The Cross Product
    * The Magnitude of the Cross Product
    * The Direction of the Cross Product
    * The Cross Product as a Determinant
  * Relating the Dot and Cross Products
  * The Hadamard or Element-Wise Product
* Unit Vectors
* Introducing Vector Functions
  * Vector Fields
  * Parametric Equations
  * A note about a vector-function's magnitudes
* Summary

<br>


Prerequisites:

* functions
* parametric equations
* trigonometry


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


Basic Operations
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


Returning to ihat, jhat, and khat
----------------------------------------

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



Special Products
========================================

There are a handful of different ways to multiply two vectors together.


The Dot Product
----------------------------------------

The dot product is given as:

	let * be the :dot: symbol

	v = < a, b, c >
	u = < d, e, f >

	v * u = ad + be + cf = |v||u|cos(angleBetween)

> Notice that the dot product takes two vectors as input and outputs a scalar.

**But what *is* the dot product?**

The dot product measures the degree to which
two vectors are pointing in the same direction.
Let's say we have two vectors, `v = aI` and `u = bI`.
`u` and `v` are collinear; they are entirely pointing in the same direction.
So, their dot product will be `|v||u|cos(0) = |v||u| = ab`.
`ab` is how much, collectively, they point in the `ihat` direction.
Alternatively, consider `w = cJ`.
`v` and `w` are perpendicular; they have no shared directionality.
So, their dot product is `|v||w|cos(pi/2) = 0`.
Zero is how much, collectively, they point in any direction.
They don't agree at all.

Let's consider the presence of cosine in the dot product.
`|u|cos(angleBetween)` gives us the length of `u` *along `v`*.
(You should know your trig!)
So, `|u|cos(angleBetween)` times `|v|` is the extent to which they agree.
(Of course, switching around `u` and `v`, this is equivalent.)

Notice, then, that the dot product's absolute value
is never greater than the product of the two vectors' magnitudes.


The Cross Product
----------------------------------------

The ross product is given as:

	let :x: be the :cross: symbol

	v = < a, b, c >
	u = < d, e, f >

	v :x: u = < bf - ec, dc - af, ae - db >
	|v :x: u| = |v||u|sin(angleBetween)

> Notice that the cross product
  takes two vectors as input and outputs another vector.
  Notice, also, that the cross product is not commutative.
  `v` and `u`, when switched around,
  result in the negative of the previous cross-product.

**But what *is* the cross product?**
Since it's a vector, it will be useful to answer that question
both in terms of its magnitude and in terms of its direction.


### The Magnitude of the Cross Product

First, let's think about just the magnitude of the cross product.
Where the dot product represents how much two vectors agree,
the cross product essentially measures how much two vectors *disagree*,
or how much two vectors point in opposite directions.
Let's say we have two vectors, `v = aI` and `u = bJ`.
They are perpendicular, and so (the magnitude of) their cross product is
`|u||v|sin(pi/2) = |u||v| = ab`.
They are pointing entirely in opposite directions,
and so they disagree 100%, or by `ab`.
Alternatively, consider `w = cI`.
`v` and `w` are collinear; they agree entirely.
So, their cross product is `|v||w|sin(0) = 0`.

This is because, instead of `cos`,
the cross product's magnitude is given with `sin`.
`|u|sin(angleBetween)` gives us the amount of `u`
which is *perpendicular* to `v`.
(You should know your trig!)
So, `|u|sin(angleBetween)` times `|v|` is the extent to which they disagree.
(Of course, switching around `u` and `v`, this is equivalent.)

Now, consider once again our `v = aI`, `u = bJ`, `|cross| = ab` example.
Here, we can see how the magnitude of the cross product
is *also* the area formed between the perpendicular parts of `u` and `v`.
That is to say, its the area of the parallellogram given by `u` and `v`.


### The Direction of the Cross Product

The cross product is a vector, though.
If the cross product measures diagreement between two vectors,
where should its vector point?
If it pointed along either of them, that wouldn't really make sense, would it?
Instead, the cross product vector
*is always perpendicular to both of the input vectors*.

Consider that, in 3d space, for any two lines,
there is exactly one other line which
forms a 90 degree angle with both of them.
The cross product of two vectors will point along that line.
By the way, this is why the true cross product *only exists* in 3d space
(and 7d space, don't ask idk yet TODO).

TODO: RHR


### The Cross Product as a Determinant

The cross product is derived from the determinant of this matrix:

	|[
	  I, J, K,
	  a, b, c,
	  d, e, f
	]| = v :x: u

TODO


Relating the Dot and Cross Products
----------------------------------------

So, the dot product is how much two vectors agree,
and the magnitude of the cross product is how much they disagree.
It would follow, then, that there exists some relationship
between the two, since they are opposing ideas.
Indeed, we can say:

	let u and v be vectors
	let m = |u||v|
	let t = angleBetween

	dot = D = mcost
	cross = C = msint

	DD + CC = (mm)(cos^2(t) + sin^2(t)) = mm(1)
	=> DD + CC = mm
	=> |u:x:v|^2 + (u*v)^2 = (|u||v|)^2

Neat!


Hadamard Product or Element-Wise Product
----------------------------------------

The Hadamard product is given as:

	v = <a, b, c>
	u = <d, e, f>

	v hadamardProduct u = <ad, be, cf>

TODO: why?


Unit Vectors
========================================

TODO: explain
TODO: projections & components


Introducing Vector Functions
========================================

A "vector function" is a function whose output is a vector.
For example:

	if   f(t) = < t, tt, ttt >
	then f(1) = < 1, 1, 1 >
	and  f(2) = 2I + 4J + 8K
	and  f(3) = < 3, 9, 27 >
	...

That's all a vector function is at its core, but *in practice*,
there are two main ways we conceptualize vector functions.


Vector Fields
--------------------------------------

First, we can think of a function as a "vector field".
Imagine some vector-function `F` of two variables:

	F(s,t) = < st, t/s, ttt >

If we were to say that `s = x` and `t = y` ...

	let s = x
	let t = y
	=> F(s,t) = F(x,y) = < xy, y/x, yyy >

... then we would have a function F which
gives us a vector corresponding to any particular point in space!
And that's what a vector field is.
For whatever dimensionality we're working in,
we can give the function some point in n-space as input,
and get a corresponding vector as output.


Parametric Equations
----------------------------------------

Alternatively, we can use vector-functions *just like* parametric equations
to define some curve, surface, volume, etc.

For example, take the line `y = x + 1`.
Now, consider the 2d-vector-function:

	v  =  <0, 1> + t<1, 1>  =  <t, t + 1>

As t goes between `-inf` and `+inf`,
the resulting vectors will trace along a continuous path.
Specifically, they'll trace along the line `y = x + 1`.
So, the graph of our vector function is that line,
or we're using a vector function to describe that line.

Notice how this is the same as parametric equations:

	<t, t + 1>   :implies:   x = t, y = t + 1

If we were to solve and graph that trivial set of parametric equations,
what would we have?
We'd have `y = x + 1`.
So, just as we use parametric equations to describe
a continuous set of points in terms other than the axes,
we can use vector functions to do the same thing.

Further, in the same way that parametric equations of two parametric-variables
can describe surfaces, or three can describe volumes,
we can have vector functions of multiple variables which
describe n-space shapes.
For example, the following vector-function describes a cone:

	v = < rcos(t), rsin(t), r >

Or, parametrically:

	x = rcost
	y = rsint
	z = r

Here are some other examples:

	v(t,z) = < 3cost, 3sint, z >           a cylinder-shell w/ radius 3
	v(s,t) = <1,1,3> + s<6,0,1> + t<1,1,0> an angled plane through (1,1,3)
	v(r,t,z) = <rcost, rsint, z>, r:in:[0,7] a cylinder-volume w/ radius 7
	v(t) = <t, cost, sint>             a spiral extending along the x axis


A note about a vector-function's magnitudes
----------------------------------------

Consider that, for a vector function, its magnitude is also a function:

	v(t) = < sin(t), cos(t), t >
	magnitude = m(t) = root( 1 + tt )

... where:

	|v(A)| = m(A)


Summary
========================================

* Vectors have a direction and magnitude.
* We denote them using vector notation or angled brackets.
* Multiplying a vector and a scalar changes the magnitude.
* Adding vectors together changes the direction and magnitude.
* The dot product is how much vectors agree.
* The cross product is how much vectors disagree.
* Vector Functions output a vector
  * Vector fields associate a vector with a point.
  * Parametrically, they describe space.

TODO:

* unit vectors
* projections
* algebraic properties of dot/cross?
