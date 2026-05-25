Partial Derivatives
========================================

<br>

<!-- INDEX -->
* Derivatives of Multivariable Functions
* Notation
* Higher-Order Partials and Clairaut's Theorem
* Relating Differentials and Partials
* Implicit Partial-Differentiation
* Directional Derivatives
  * The Gradient of a Function
  * Derivatives Along a Vector

<br>


Prerequisites
(For real, you *need to* remember how this stuff works.)

* multivariable functions
* vectors
* regular, single-variable derivatives

> TODO: limit definition of partial


Derivatives of Multivariable Functions
========================================

By now, we should be familiar with derivatives of single-variable functions.
We know what they mean: a rate of change, a slope, a ratio.
The next question is how does this idea extend into higher dimensions?
Or, how do we take the derivative of a multivariable function?

It's worth taking a step back
and remembering some details about multivaiable functions.
For discussion purposes, let `f(x,y)` be a function of two variables,
and let `g(x)` be a function of a single variable.
This means that the value of `f` is dependent on both `x` and `y`,
while `g` is dependent on just `x`.
If we were to graph these functions,
we could graph `g` on a 2d plane where `g(x) = y`, giving us a line.
Graphing `f`, however, we would use a 3d space where `z = f(x,y)`.
That means that the graph of `f` is a 2d surface in 3d space.
(If this isn't making sense, you may need to review multivariable functions.)

If `g` is a line, and we know its derivative is the slope,
its easy to see that any given point on the line has a single derivative.
If `f` is a *surface*, however, things are different.
A *surface*, at any given point, has (potentially) infinite different slopes
depending on the direction of travel.
If we were to stand on the side of a hill and walk in a direction,
depending on the direction we chose, we would go up/down at a different rate.
So, necessarily, each slope of a surface has both a *direction* and a *magnitude*.
What has both a direction and a magnitude? A vector does.

Consequently, in the same way that we describe
vectors by their separate x and y components,
we can also describe the derivative of a multivariable function
in terms of separate x and y "components".
We don't call them components, though; we call them "partial derivatives".

The partial-derivative of `f` with respect to `x` is, simply,
the derivitive of `f` *in the +x direction* of our 3d space.
Or, the slope of the f-surface in the direction of along the x-axis.
(If it helps, you could think of this as taking the derivative of
the intersection between the f-surface and a plane parallel to the `xz` plane,
which makes a line.)
It's how much `f` changes for only a change in `x`, where `y` stays the same.

> TODO do I need an example surface?

Then, to compute a partial derivative,
we need only take the derivative with respect to a single variable,
while treating the other one as constant.

	let F(x,y) = 5xxyy + x + 2y
	let F_x be the partial derivative with respect to x

	F_x = 10xyy + 1
	F_y = 10xxy + 2

So, if we were to start at the point (2,1) on the surface given by F,
along the x-axis-direction there would be a slope of `10(2)(1^2) + 1 = 21`,
and along the y-axis direction it would be `10(2^2)(1) + 2 = 42`.
And together, (as we will see later) we could use these derivatives
to see what the slope is in *any* direction.

The last thing to note is,
while we've conceptualized this in 3d for ease of understanding,
this same concept applies in higher dimensional spaces.
For instance, a function of three variables `h(x,y,z)`
would have three partial derivatives: `h_x`, `h_y`, and `h_z`.
(Just as a vector in higher dimensions has added components.)


Notation
========================================

There are a handful of different ways that we denote partial derivatives.
First, we've already used the subscript-convention above `f_x`.
There are a few variations on that.
(note: D is capital D, not DELTA)

	f_x = f'_x = D[x]f

Alternatively, instead of x, y, and z subscript,
we may use 1, 2, 3, etc.
(This could apply to any of the subscript-variations above.)

	f_x = f_1
	f_y = f_2
	f_z = f_3
	  ? = f_4    for fourth dimension
	etc

One of the advantages of this subscript-notation
is that its easy to denote higher-order partial derivatives:

	f_x, f[xx], f[xxx], ...

---

Alternatively, there is a notation which mirrors
single-variable-calculus's "Leibniz Notation".
It's very similar, except instead of `d`, we use a different symbol
known as the "partial" symbol.
It looks a bit like a curly-d.
(This symbol is also commonly, ***but incorrectly***, referred to as "del".)
We can't type the symbol in ascii, so I usually use `a` in these notes.

	let a be the partial symbol

	f_x = af/ax = (a/ax)f

	f[xx] = (a^2/ax^2)f

> While this can certainly be a useful notation,
its worth noting that partial-differentials (`ax` or `af` alone)
are *not* the same as actual differentials (`dx` or `df`)
and don't necessarily share all of the same properties.
Why? Well, think about our explanation of partials above.
They're individual *components* of a greater derivative,
so we can't always just use them the same way we would that derivative.
There will be more about this later.

Finally, as shorthand for this partial-notation,
you sometimes see the following:

	a_x = a/ax  =>  (a_x)f = af/ax

---

So, in summary, there are two dominant notation-forms.
First, there is the subscript-notation,
which is useful for higher-order partials.
And second, there is the partial-symbol notation
which mirrors Leibniz Notation.


Higher-Order Partials and Clairaut's Theorem
========================================

Higher-order partial derivatives behave as you'd expect
if you're familiar with higher-order regular derivatives.

	f = xxxyy + xxy

	f[x] = 3xxyy + 2xy
	f[xx] = 6xyy + 2y
	f[xxx] = 6yy
	f[xxxx] = 0
	
	f[y] = 2xxxy + xx
	f[yy] = 2xxx
	f[yyy] = 0

The difference, however,
is that we can mix-and-match our partial derivatives:

	f[x] = 3xxyy + 2xy
	f[xy] = 6xxy + 2x

	f[yy] = 2xxx
	f[yyx] = 6xx

"Clairaut's Theorem" states that
partial derivatives will be identical,
as long as differentiation occurs the same number of times,
regardless of order.
(TODO explain better)
Or:

	f[xy] = f[yx]

We can see this in practice with the earlier example:

	f = xxxyy + xxy

	f[xx] = 6xyy + 2y
	f[xxy] = 12xy + 2

	f[y] = 2xxxy + xx
	f[yx] = 6xxy + 2x
	f[yxx] = 12xy + 2 = f[xxy]

... and so forth.


> TODO: proof and/or geometric reasoning


Relating Differentials and Partials
========================================

	dz = (az/ax)dx + (az/ay)dy

	dz/dt = (az/ax)(dx/dt) + (az/ay)(dy/dt)


Implicit Partial-Differentiation
========================================

	az/ax = -F_x / F_z


Directional Derivatives
========================================

TODO

	D[v]
	f'_v
	vhat*NABLAf

So, we've seen that partial derivatives are just derivatives/slopes
in the direction of some particular axis.
In theory, though, there should exist
a partial derivative along *any* direction, not just the axes.
So, let's see how we can find other "directional derivatives".


The Gradient of a Function
----------------------------------------

Before doing that though,
we need to establish the concept of the "gradient" vector.
We've already seen how partials are like vector components.
Here, with the gradient, we put that into practice.
The gradient is just a vector whose components are partial derivatives:

	let f(x, y) be some function
	gradient of f = < af/ax, af/ay >

	let g(x, y, z, w) be some function
	gradient of g = < ag/ax, ag/ay, ag/az, ag/aw >
	where w is a fourth axis

If we wanted some *single* derivative of a multivariable function,
this vector, the gradient, is the closest thing we have.
It is the derivative which our partial derivatives, as components, describe.

Notation-wise, we use the "NABLA" symbol (an upside-down capital-DELTA)
to denote the gradient.
This symbol, NABLA, is the *true* "del" operator.
However, since people often confuse "del" and "partial",
it is more useful to refer to it as NABLA, in my opinion.

	gradient of f = :NABLA:f

> NABLA is also used to denote "curl" and "divergence",
  so we will be seeing more of it later.

> TODO: is maximum possible derivative


Derivatives Along a Vector
----------------------------------------

TODO: dot product with unit vector

