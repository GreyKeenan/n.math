Integration by Partial Fractions
========================================

<br>

<!-- INDEX -->
* What We Are Trying to Do
* Okay, but how do we do that?
  * Step One: Polynomial Long Division
  * Step Two: Factor the Denominator
  * Step Three: Split Into Partial Fractions
  * Step Five: Integrate the Resulting Partial Fractions
* In Summary

<br>


Prerequisites:

* rationals
* polynomial long division
* complex numbers
* FTC
* arc-trig derivatives


What We Are Trying to Do
========================================

To illustrate the process,
it is useful to first see it in reverse.
Consider two fractions:

	let h = 1 / (x - 2)
	let j = (x - 3) / (xx + 4)

Recognize that we would be able to integrate
either h or k with the tools already established.

	Shdx = ln|x-2| + C
	Sjdx = (1/2)ln|xx+4| - (3/4)arctan(x/2) + C

Now, consider their sum:

	            /  (xx + 4) + (x - 3)(x - 2)  \
	k = h + j = : --------------------------- :
	            \      (x - 2)(xx + 4)        /

	    /  2xx - 5x + 10       \
	k = : -------------------- :
	    \  xxx - 2xx + 4x - 8  /

Now, what would you do if you were asked to integrate k?
If we didn't know that it was the sum of h and j, it would seem impossible.
*But*, knowing h and j, we could express the integral of k as
the sum of the integrals of h and j:

	Skdx = Shdx + Sjdx

That is the goal with this technique.
When integrating some ratio of polynomials (k),
find its "partial fractions" (h, j, etc) and express k as their sum.
Then, you can integrate the seperate, simpler terms.


Okay, but how do we do that?
========================================

Let's learn the actual technique, now.

Step One: Polynomial Long Division
----------------------------------------

First, the degree of the numerator must be less than that of the denominator.
If it is, then we can move on to the next step.
If it *isn't*, we'll need to do some polynomial long division to make it so.

	TODO
	"proper" vs "improper"


Step Two: Factor the Denominator
----------------------------------------

	TODO
	"linear factors"
	"irreducible quadratic factors"


Step Three: Split Into Partial Fractions
----------------------------------------

	TODO
	patterns & powers


Step Four: Solve for the Unknown Constants
----------------------------------------

	TODO
	two approaches, right?


Step Five: Integrate the Resulting Partial Fractions
----------------------------------------

	TODO
	the finite n-types which can occur (was it four?)


In Summary
========================================

0. We are asked to integrate some rational expression,
  and substitutions alone are not sufficient to solve it.
1. Ensure the numerator has a lesser-degree than the denominator,
  using polynomial long division if necessary.
2. Factor the denominator as a product of linear and/or quadratic expressions.
3. Create templates for the partial fractions using unknown constants.
4. Solve for those constants by plugging in values of x.
5. Integrate the resulting partial fractions and take the integrals' sum.


