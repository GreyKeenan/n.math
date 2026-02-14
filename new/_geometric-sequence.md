Geometric Sequences (Progressions) and Geometric Series
==================================================

> [index](index#the-notes) /
  geometric sequences

<br>

<!-- INDEX -->
* What is a geometric sequence?
* Geometric Series
* Other properties of geometric series
  * Convergent Geometric Series
* Reference

<br>


What is a geometric sequence?
==================================================

A "geometric sequence" or "geometric progression" is
any sequence of numbers where each number is
the product of the previous number
and some constant, typically denoted as `r`.
In other words, a geometric sequence is whenever you have a pattern:

	let a_n be the n-th number in the sequence

	a[n] = r * a[n-1]

Here you might recognize that:

	r = a[n] / a[n-1]

As such, `r` is also called the "common ratio".

That's all that a geometric sequence is, though.
Any time you have sequence of numbers which fit this pattern,
you have a geometric series.


Geometric Series
==================================================

A "geometric series" is the sum of a geometric sequence.
They can be really useful because
we can use a formula to solve geometric series
without having to do all of the intermediate addition steps.

Specifically, the formula enables us to
sum the first `n` items of any geometric sequence.
The formula is:

	                      a_1(1 - r^n)
	"n-th partial sum" = -------------- ;  r != 1
	                         1 - r

Let's see where this formula comes from:

	sum[n] = a[1] + a[1]r + a[1]rr + ... + a[1]r^[n-1]
	r * sum[n] = a[1]r + a[1]rr + a[1]rrr + ... + a[1]r^[n]

Now, subtract both of the left-sides from each other,
and subtract both of the right-sides from each other.
That gives us:

	sum[n] - r*sum[n] = a[1] - a[1]r^n
	sum[n](1 - r) = a[1](1 - r^n)
	sum[n] = a[1](1 - r^n) / (1 - r)
	r != 1

and there you go!


Other properties of geometric series
==================================================


Convergent Geometric Series
--------------------------------------------------

When the common ratio is less than 1 (or between -1 and 1, specifically),
the term `(1 - r^n)` trends towards 1.
And of course this is the case; we are adding increasingly smaller fractions.
So, we can say:

	if    |r| < 1  and  r != 0
	then  lim[n->inf] (1 - r^n) = 1
	=>    sum[inf] = a[1] / (1 - r)

This is known as a "convergent geometric series",
since as the series goes towards infinity, it converges at a point.

Specifically, a convergent geometric series is a series where `|r| < 1`.


### using a convergent geometric series to fraction-ify repeating decimals

Consider:

	0.1818181818...

This is the same as:

	18/100 + 18/10000 + 18/1000000 + ...

Our common ratio, here is `1/100`.
It has an absolute value less than zero, so it is convergent.
So, we can do:

	sum[inf] = (18/100) / (1 - (1/100))
	... simplify ...
	2/11

	therefore:

	0.18181818...  =  2/11

neat!


Reference
==================================================

* <https://saylordotorg.github.io/text_intermediate-algebra/s12-03-geometric-sequences-and-series.html>
