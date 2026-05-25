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
  * Nabla and The Gradient of a Function
  * Derivatives Along a Vector

<br>


Prerequisites
(For real, you *need to* remember how this stuff works.)

* multivariable functions
* vectors
* regular, single-variable derivatives


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
If we were to stand at some point on the surface and walk in a direction,
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

TODO example surface maybe?

TODO continue: numerical/symbolic value, limit definition, higher dimensions


Notation
========================================

TODO

	let a be the "partial" symbol
	af/ax

	f_x, f_xx
	f'_x
	D[x]f
	(D1)f


Higher-Order Partials and Clairaut's Theorem
========================================

	f[xy] = f[yx]

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


Nabla and The Gradient of a Function
----------------------------------------


Derivatives Along a Vector
----------------------------------------


