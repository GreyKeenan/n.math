Partial Derivatives
========================================

<br>

<!-- INDEX -->
* Introduction to Partial Derivatives
* Higher-Order Partials, Clairaut's Theorem
* Differentials using partials
* A technique for implicit differentiatiob
* A technique for approximating a change in z

<br>


Introduction to Partial Derivatives
========================================

Consider a function of two variables, `f(x,y)`.
How do we take its derivative?

Well, in impliit-differentiation situations before,
we've seen that we can take the derivative (with resp. to x) of
a statement containing both x and y by using `y'` and the chain rule.
This only works, however,
if we have some existing relationship between x and y.

What about when x and y are independent from one another?
That's where partial derivatives come in.
Essentially, we just take the derivative of the function
with respect to a specific variable
and treat the other variable as though it is a constant.

Observe:

	let f_x be the partial derivative with respect to x

	f(x,y) = 5x + 7y
	f_x = 5
	f_y = 7

	g = xxy
	g_x = 2xy
	g_y = xx

	h = ln(sin(x)/y)
	h_x = (1/(sinx/y))(1/y)(cosx)
	h_y = (1/(sinx/y))(sinx)(-y^[-2])

Notation wise, we may use the subscript convention above.
Alternatively, partial derivatives are denoted similarly to
regular ones in Leibniz notation.
The difference is that we use the `del` symbol instead of `d`.
(In this file, I use `a` in place of `del`.)

	let a be del

	derivative: (d/dx)(...)
	partial derivative: (a/ax)(...)

	f(x,y) = ln(y)xxx
	af/ax = (lny)3xx
	af/ay = xxx/y

There are a few other notational conventions
that people may or may not use:

	af/ax = f_x = f_x' = f_1 = D[x]f = D[1]f = a[x]f
	af/ay = f_y = f_y' = f_2 = D[y]f = D[2]f = a[y]f


Higher-Order Partials, Clairaut's Theorem
========================================

Higher-order partial derivatives
are seemingly extremely similar to higher-order regular derivatives.

	f = 7xxy + x/y

	f_x = 14xy + 1/y
	f[xx] = 14y

	f_y = 7xx - x/(yy)
	f[yy] = 2x/(yyy)

The interesting feature, though,
is that we can mix and match our partials.
Consider that we can first take a partial with respect to x,
and *then* take the partial of that with respect to y:

	f[xy] = 14x - 1/(yy)

Surprisingly, if we do x and then y,
we will get the same result as if we did y and then x:

	f[yx] = 14x - 1/(yy)

This is known as "Clairaut's Theorem":
(TODO)

Essentially, if we take partial derivatives
with respect to differing variables,
the resulting function will be identical
regardless of the order they were done in.
Or:

	(a/ax)(af/ay) = (a/ay)(af/ax)


Differentials using partials
========================================

	let z be a function of x and y
	ley D be DELTA

	Dz = (az/ax)Dx + (az/ay)Dy
	dz = (az/ax)dx + (az/ay)dy

TODO explain better

Furthermore,
that relationship allows us to establish
`dz/dt` when x and y are given parametrically:

	let x,y be parametric functions of t

	dz/dt = (az/ax)(dx/dt) + (az/ay)(dy/dt)

or

	let x,y be parametric functions of s,t

	az/as = (az/ax)(ax/as) + (az/ay)(ay/as)
	az/at = (az/ax)(ax/at) + (az/ay)(ay/at)

and so forth.



A technique for implicit differentiatiob
========================================

TODO explain at all

	if F(x,y) = 0
	then ay/ax = -(aF/ax)/(aF/ay)
	which extends to higher variable-counts

And because of that, we know we cant cancel partials like we do differentials.


A technique for approximating a change in z
========================================

TODO explain

	we saw: Dz = (z_x)(Dx) + (z_y)(Dy)
	now: Dz ~= dz when Dx and Dy are small
	etc.

