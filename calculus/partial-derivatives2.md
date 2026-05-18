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

	let a be partial
	af/ax
	f_x, f_xx
	f'_x
	D[x]f
	(D1)f


Higher-Order Partials and Clairaut's Theorem
========================================

	f[xy] = f[yx]


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
