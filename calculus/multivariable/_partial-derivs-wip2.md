Partial Derivatives
========================================

<br>

<!-- INDEX -->
* Introduction to Partial Derivatives
* Notation
* Higher-Order Partials and Clairaut's Theorem
* Directional Derivatives
* Relating Differentials and Partials
* The Chain Rule and Partials
* A technique for implicit partial-differentiation

<br>


Prerequisites: (TODO links)

* single-variable calculus concepts


Introduction to partial derivatives
========================================

Consider a function of two variables, `f(x,y)`.
How do we take its derivative?
Of course, if we had an equation for `y` in terms of `x`,
we could differentiate with respect to either.
But what about when we don't?
What about when `x` and `y` are both independent variables?
That's where partial derivatives come in.


Notation
========================================

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


Directional Derivatives
========================================

	D[v]
	f'_v
	vhat*NABLAf


Relating Differentials and Partials
========================================

	dz = (az/ax)dx + (az/ay)dy

	dz/dt = (az/ax)(dx/dt) + (az/ay)(dy/dt)


A technique for implicit partial-differentiation
========================================

	az/ax = -F_x / F_z
