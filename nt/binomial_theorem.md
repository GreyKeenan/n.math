The Binomial Theorem
==================================================

<br>

<!-- INDEX -->
* Finding a Pattern
  * for the powers
  * for the coefficients
* The Binomial Coefficient
  * special notation
  * How it helps
  * Alternative
* The Binomial Formula

* References

<br>

Consider:
~~~
(x + y)^2
== (x + y)(x + y)
== (x + y)x + (x + y)y
== x^2 + 2xy + y^2
~~~

Recall that (x + y) is a "binomial".
When expanding binomials with exponents in this way,
it can quickly get complicated.

The "Binomial Theorem" or "Binomial Expansion"
is a technique to create and/or represent this expansion effeciently.


Finding a Pattern
==================================================

A pattern can be found in these polynomial expansions,
which will lead to the formula used later.


for the powers
--------------------------------------------------

Lets write out expansions for the first few powers.

~~~
(x + y)^0 = 1
(x + y)^1 = x + y
(x + y)^2 = x^2 + 2x y + y^2
(x + y)^3 = x^3 + 3y x^2 + 3x y^2 + y^3
(x + y)^4 = x^4 + 4y x^3 + 6x^(2)y^2 + 4x y^3 + y^4
~~~

Alternatively, if writing the implicit 1s,
this would be:

~~~
x^0 y^0
x^1 y^0 + y^1 x^0
x^2 y^0 + 2x^1 y^1 + y^2 x^0
x^3 y^0 + 3y^1 x^2 + 3x^1 y^2 + y^3 x^0
x^4 y^0 + 4y^1 x^3 + 6x^2 y^2 + 4x^1 y^3 + y^4 x^0
~~~

Here, we can see a pattern.
The first power of x increases each row.
Within each row, the power of x decreases to 0 with each term.
Within each row, the power of y increases from 0 each term.

So here, we can see a pattern for the powers.


for the coefficients
--------------------------------------------------

Similarly to above,
lets just write out the coefficients,
including implicit 1s:

~~~
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
~~~

This pattern is known as "pascal's triangle".
Rows are created by:

1. summing adjacent numbers in the previous row.
2. prefix/append a 1 to that list of sums.

so, the next row would be: `1, 5, 10, 10, 5, 1`

Going through all the steps of this triangle is cumbersome though.
So, we can try to find an alternative method which generates the values.


The Binomial Coefficient
==================================================

This may seem unrelated at first,
but it will tie together.
Also, see combinatorics for more. `TODO`

The binomial coefficient,
sometimes referred to as the "choose function",
is a formula for counting
the possible k-length subsets
of an n-length set.
In other words,
using only elements from a set of length 'n',
how many unique k-length sets can you create?

The formula is:
~~~
k <= n
n! / k!(n - k)!
~~~


special notation
--------------------------------------------------

The choose function has special notation.

~~~
/  (n)
:      = n! / k!(n - k)!
\  (k)
~~~

alternatively, using my ascii notation, these would work:
~~~
_^(n)[k]
:CHOOSE:(n, k)
~~~

This is just fancy notation syntax stuff.
This is the same as putting the formula there.
Its just shorthand really.


How it helps
--------------------------------------------------

So, as you may have noticed,
the choose function can generate the pattern
of pascal's triangle.

If `n` is the original binomial's power, or the row,
and `k` is the ascending-variable's power (y's), or the column,
we create the triangle:

~~~
C = :CHOOSE:
C(0, 0)
C(1, 0) C(1, 1)
C(2, 0) C(2, 1) C(2, 2)
C(3, 0) C(3, 1) C(3, 2) C(3, 3)
C(4, 0) C(4, 1) C(4, 2) C(4, 3) C(4, 4)
==
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
~~~

So, the choose function is a way to
represent the triangle effectively in notation.


Alternative
--------------------------------------------------

The choose function can be viewed in an alternate form. [^2]
The potential advantage of this form is that
if k > n it will evaluate to '0' as expected.

~~~
:CHOOSE:(n,k)
== n((n - 1) ... (n - k + 1)) / k!
== (:TTPROD:[i=0]^(k-1) n-i) / k!
~~~

examples:
~~~
:CHOOSE:(3, 1) == 3
== 3! / (1!(3 - 1)!) == 6 / 2 == 3 /* earlier form */
== (3 - k + 1 = 3) /1! == 3/1 == 3 /* this form */
== (:TTPROD:[i=0]^(0) 3-i) / 1! == 3 /* product notation */

:CHOOSE:(3, 2) == 3
== 3! / (2!(3 - 2)!) == 6 / 2 == 3
== (3 * (n - k + 1 = 2)) /2! = 6/2 = 3
== (:TTPROD:[i=0]^(1) 3-i) /2! == (3*2)/2 = 3
~~~


The Binomial Formula
==================================================

So, putting those patterns together,
we can create the binomial formula.
Notice how this is just the patterns from before in formula form.

~~~
(x + y)^n
== :ZSUM:[k=0]^(n) :CHOOSE:(n,k) x^(n-k) y^k
== :ZSUM:[k=0]^(n) :CHOOSE:(n,k) x^k y^(n-k)
~~~

The choose function determines the coefficient for a term,
and the identified pattern determines the powers for the term.
Then, the terms are linked together as they should be with summation.
(Also, x/y are reversible because the original addition is.)

Notice that when working backwards,
to determine k,
you only need to look at y's power.






References
==================================================

[^1]: https://youtu.be/dxe6s3K_TGo

Inventing the Binomial Theorem: An Intuitive Approach \
@brainticklee
<https://youtu.be/dxe6s3K_TGo>

[^2]: https://youtu.be/bXftbc-U100

Counting \
@MichaelPennMath
<https://youtu.be/bXftbc-U100>
