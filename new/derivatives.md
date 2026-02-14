Derivatives: What is a derivative?
==================================================

> [index](index#the-notes) /
  derivatives

<br>

<!-- INDEX -->
* What is a derivative, graphically?
* What is a derivative, practically?
* Key Concepts
  * Derivatives exist between two variables.
  * Higher Derivatives
* Language and Phrasing
* Defining Derivatives
  * Using the Derivative Definition
* Differentiability
* [Summary](#summary)

<br>

This document is an introduction to the idea of derivatives.
First, it discusses what derivatives *actually are*
in a graphical sense, practical sense, and mathematically.
Then, it outlines key concepts and
presents common language/phrasing surrounding derivatives.


### For further information about derivatives, see:

* [derivative notation](derivatives_notation)
* [differentiation rules](derivatives_differentiation-rules)
* [antiderivatives](derivatives_antiderivatives)
* [differentiation cheatsheet](refsheet/derivatives)

>

	TODO
	linear approximation
	differentials
	?advanced differentiation rules?
	exercises/problems


What is a derivative, graphically?
==================================================

Graphically, the derivative of an equation is just the slope of that equation.

In the simplest case, consider a straight line.
Its equation is given in the form:

	y = mx + b

where `m` is the slope and `b` is the y-intercept.

One of the first things we learn about lines is the idea of a slope.
For a straight line, its slope is the same across the entire line.
No matter what value of `x` you give, the slope will always be `m`.
The derivative is just the slope,
so in this simple case, the derivative is also `m`.

Now, think about any non-straight line.
For example, the curve:

	y = x^2

What is the slope of this line?

As opposed to a straight line, a curve's slope is *not* constant.
Depending on what part of the line you are looking at,
it will go up/down at different rates.
A different value of `x` will result in a different slope,
so we can say that the slope is a function of `x`.

We will go over how to find it later,
but in this example, the slope of `x^2` is `2x`.
At any `(x, y)` point on the line, the slope *at that point* is `2x`.
Meaning, the *derivative* of `x^2` is `2x`.

> Notice of course, that this slope is not constant;
  it is a function of `x`.

So, graphically, the derivative of an equation
is the same as that equation's slope.
What makes derivatives different from the typical conception of slope, then,
is that they apply to non-straight lines as well.


What is a derivative, practically?
==================================================

Alright, so, hopefully you can look at a graph
and have some idea of what a derivative is.
How does that apply to real concepts?

Well, if a derivative is just the slope, what is a slope?

	TODO

	ratio / in terms of units
	rate-of-change


Key Concepts
==================================================

These are some important things to keep in mind about derivatives.


Derivatives exist between two variables.
--------------------------------------------------

A derivative exists *for some function* and *with respect to some value*.

On a graph, this is more obvious.
The derivative exists for some function, the y-axis,
with respect to some value, the x-axis.
If we were to swap out either of the values on the axes,
we would have a new graph, a new slope, and therefore a different derivative.
In real problems, though, it can be a little more obscured.

For example, say we are measuring the rate-of-change in some object's mass.
We might consider that change as a consequence of many different factors.
Perhaps the mass increases over time,
perhaps the mass increases as object are piled onto it,
perhaps we want to track the mass changing as the volume changes,
or perhaps all of these things at once.
Each of those mass functions would have their own derivatives:
the derivative of mass with respect to time,
the derivative of mass with respect to the number of objects,
the dericative of mass with respect to volume, etc.

If that's confusing,
perhaps it helps to tie it back into the graphical sense.
For each of those functions,
we could have a separate graph with mass on the y-axis
and the respective independent variable on the x-axis.
Each of those graphs, then, have their own slope,
so each of those graphs have their own separate derivatives.

A derivative is the rate of change in some value,
with respect to the change in some other value.
Separate derivatives exist when either of those things is different.


Higher Derivatives
--------------------------------------------------

Another important idea is higher derivatives.
We know a derivative exists for some function.
Derivatives themselves are functions too, though.
So, we can actually take the derivative of a derivative.

If you think of a derivative as the slope of some line,
then consider the graph of that slope.
That graph, itself, has a slope as well.
That second graph's slope is its derivative.

Alternatively, consider a derivative as the rate-of-change in some value;
let's say position.
The rate-of-change in position is velocity.
What is the rate-of-change in velocity, though?
Acceleration.
You could say that acceleration is the derivative of velocity,
which is the derivative of position.
Further, "jerk", or change in acceleration, is the derivative of acceleration.

These derivatives-of-derivatives are known as "higher derivatives".
The derivative of a derivative is the "second derivative",
the next is the third, and so forth.
You can repeat this process infinitely, finding higher and higher derivatives.
For many equations, though, the higher derivatives eventually flatten-out at 0.

For example, say our starting function is `f(x) = x^3 + 2x^2`.
The first derivative is `f'(x) = 3x^2 + 4x`;
the second is the derivative of that, `f''(x) = 6x + 4`;
the third is `f'''(x) = 6`; and the subsequent derivatives zero-out.


Language and Phrasing
==================================================

	TODO

	derivative of f at x is L
	differentiation, not to be confused with differentials

	with respect to x
	primes
	  f prime
	  f prime of x
	  f prime x


Defining Derivatives
==================================================

So, we've been introduced to the concept of a derivative,
but how is it represented mathematically?

Well, the derivative of a function is just
a specific [limit](limits) involving that function.

The derivative of the function `f` at `x` is given by:

	/              f(x + h) - f(x)
	:  lim[h->0]  -----------------
	\                     h

or, equivalently, the derivative of `f` at `a` is:

	/              f(x) - f(a)
	:  lim[x->a]  -------------
	\                 x - a

This is, ultimately, all that a derivative is.
It is the above formula where
`f` is replaced by some function that you are differentiating.
Consequently, you can solve that limit with some function
in order to find that function's derivative.


Using the Derivative Definition
--------------------------------------------------

We stated earlier that the derivative of
`mx + b` with respect to `x` is `m`.
Let's show that using the limit definition.

	let f(x) = mx + b

	/              f(x + h) - f(x)
	:  lim[h->0]  -----------------   =  the derivative of f
	\                     h

We can simply substitute for the function in the limit:

	/              (m(x + h) + b) - (mx + b)
	:  lim[h->0]  ---------------------------
	\                     h

... and solve:

	/              mx + mh + b - mx - b
	:  lim[h->0]  ----------------------
	\                     h

	lim[h->0]  mh / h
	lim[h->0]  m
	(lim[h->0] m) = m

So, the derivative of `y = mx + b` is `m`.
We found it by substituting it into the
derivative-defintion and solving the limit.

You can theoretically use this process with any function,
although there are [faster techniques](derivatives_differentiation).


Differentiability
==================================================

Differentiation is the process of finding the derivative of a function.
Differentiability, then, is a function's ability to be differentiated.

	TODO


Summary
==================================================

* Depending on how you look at it,
  a derivative is the slope of a graph,
  the rate-of-change in some value with respect to another,
  or a specific limit formula.
* A derivatives exists for some function `f`
  with respect to some variable `x`.
* A derivative can be solved for some value `x = v`.
  We could say "the derivative of `f` at `v`" or "`f` prime of `v`".
* Differentiation is the process of finding a derivative.
  Functions are differentiable when `TODO`.
* By repeated differentiation, we can find higher derivatives.

If you are just learning about derivatives,
a good next-step is [derivative notation](derivatives_notation).
Alternatively, see the
[further information](#for-further-information-about-derivatives-see)
section towards the [top of the page](#derivatives-what-is-a-derivative).
