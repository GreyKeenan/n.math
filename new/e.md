e
==================================================

<br>

<!-- INDEX -->
* the natural logarithm
* the exponential function
* limits and `e`
* differentiation and `e`
* a continued fraction for `e`

<br>


The number represented by the symbol `e`
is known as "Euler's Number", "Napier's Constant", or simply "e".
It is an irrational constant that pops up everywhere.

Why is this specific irrational so important, though?
It just so happens that `e` comes up a lot
in problems surrounding natural phenomena.
It is also used as the base of the natural logarithm `ln`.
Further, some of its properties
make it particularly useful for [differentiation](derivatives).

We'll get to that more below.
First, what is the value of `e`?
Well, it's irrational, but to 30 decimal places:

	e = 2.71828_18284_59045_23536_02874_71352...

>

	TODO

	e = :sum:[n=0]^[inf] 1/(n!)


the natural logarithm
==================================================

One of the first things you learn about `e`
is that it is the base of the natural [logarithm](logarithms) `ln`.

	log[e] x = ln x

This doesn't give you a great sense of *why* we use `e` yet,
but it is one of the major things you will be doing when you use `e`.

Really, though, `ln` is just shorthand for `log` with a base of `e`.
I won't go into all of the details about [`log`](logarithms) as a whole here,
but suffice it to say that all of the regular rules apply.


the exponential function
==================================================

> TODO

	e^x


limits and `e`
==================================================

One way to define `e` is:

	e = lim[n->inf] (1 + 1/n)^n

> TODO


differentiation and `e`
==================================================

	d/dx[x=0] (e^x) = 1

> TODO


integrals and `e`
==================================================

	:integral:[1]^e dx/x = 1

> TODO i dont know how integrals work


a continued fraction for `e`
==================================================

One way to calculate or approximate `e`
is with the following [simple continued fraction](continued-fractions):

	e = [2; 1,2,1, 1,4,1, 1,6,1, 1,8,1, ... ]

> TODO
