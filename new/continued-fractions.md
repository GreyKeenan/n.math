Continued Fractions
==================================================

<br>

<!-- INDEX -->
* What is a continued fraction?
  * Simple or Regular Continued Fractions
* Notation
  * A more-compact approach
  * Mirroring sigma notation and product notation
  * Notating Simple Continued Fractions

<br>


What is a continued fraction?
==================================================

A continued fraction is a specific form of [iterative](iteration) division.
Visually, a continued fraction is:

	       a_1
	b_0 + -----------------------------------
	              a_2
	       b_1 + ---------------------------
	                     a_3
	              b_2 + -------------------
	                            a_4
	                     b_3 + -----------
	                            b_4 + ...

... and so forth.
Essentially, you are continually nesting fractions in the denominator
and adding a value to them.

The sequence of numerators is given by `{a_i}`,
and the sequence of addends is given by `{b_i}`.
Notice that these sequences alone are sufficient to define the fraction.

This process may repeat infinitely, or it may be finite.

I don't have a good sense of everything that continued fractions are good for,
but I do know that they can be used for calculating irrational values
such as [`pi`](pi-and-tau) or [`e`](e).


Simple or Regular Continued Fractions
--------------------------------------------------

A "simple" or "regular" continued fraction
is a continued fraction where the numerator is always `1`.

	       1
	b_0 + -------------------
	              1
	       b_1 + -----------
	              b_2 + ...

In this case, of course, a sequence defining the numerators is not necessary.

> Depending on the context, some sources treat simple continued fractions
  as though they are the default.
  In that case, other continued fractions are "generalized".


Notation
==================================================

The notation shown so far is perhaps the most intuitive,
but it is quite large and cumbersome to write.
There are a variety of alternative ways to denote continued fractions.


A more-compact approach
--------------------------------------------------

A one-line approach which merely reformats the earlier notation is:

	       a_1      a_2      a_3      a_4      a_5
	b_0 + -------  -------  -------  -------  -------   ...
	       b_1 +    b_2 +    b_3 +    b_4 +    b_5 +

Here, the trailing `+`s in the denominators
distinguish the continued fraction from regular fractions.

A similar method looks something like:

	       a_1 |    a_2 |     a_3 |    a_4 |    a_5 |
	b_0 + |----| + |----| +  |----| + |----| + |----|   ...
	      | b_1    | b_2     | b_3    | b_4    | b_5

... where the typical fraction-bar is extended into a staircase-shape.


Mirroring sigma notation and product notation
--------------------------------------------------

Another version of the notation mimics
[sigma notation and product notation](sigma-and-product-notation).
Rather than capital-sigma or capital-pi, the symbol used here is `K`
(for "Kettenbruch", the german name for continued fractions).

	       n    a_i
	b_0 + K    -----
	       i=1  b_i

> Personally, I like the idea of this notation for consistency.


Notating Simple Continued Fractions
--------------------------------------------------

Since simple continued fractions don't need a second sequence of numerators,
their notation can be simplified further.
They are often denoted as just a sequence of addends:

	[b_0; b_1, b_2, b_3, b_4, ... ]

The semicolon distinguishing the 0th addend (or "whole part")
is sometimes replaced with a comma.
