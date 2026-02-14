-nomials
==================================================

TODO: organize these notes into a new file.

<br>

<!-- INDEX -->
* Standard Form

<br>

polynomial:

* a mathematical expression
* containing variables/"indeterminates"
* containing coefficients
* only involves: addition, subtraction, multiplication, exponentation with non-negative integer powers
* variables cannot be in the denominator
* the number of terms is finite

monomial: a polynomial consisting of only 1 term.
	(terms are "addends")

ex: 3x^2 \
ex: 3xyz \
non-example: 3x^2 + 4 \
non-example: 3x - 1

binomial: polynomial with 2 terms

trinomial: polynomial with 3 terms

~~~
/* the idea of mono-, bi-, or tri- nomials is strange to me,
since you can easily convert between them by abstracting
sections of the expression into their own variables. */
	a + b + c    /* trinomial */
	d = b + c
	a + d        /* binomial */
/* I guess maybe its useful to constrain it in that way
for certain transformations, though */
~~~




TODO:
==================================================

degree of a polynomial

* highest combined power of its variables

degree of the binomial `x^2y^2 + x^5y` is `6`.
For term 1, its degree is 4.
For term 2, its 6 (implied `^1` for y).
So, the degree of the polynomial is the highest of
its terms degrees: 6.



zeroes of it (?values that make it evaluate to zero?)





Standard Form
==================================================

A polynomial is in standard form when:

* terms are ordered by decreasing degree
* same-degree terms are combined

~~~
5xx + 3x + 4xxx + 1 + 3x -> 4xxx + 5xx + 6x + 1
~~~

the "*leading term*" is the first term of a standard-form polynomial.
Aka, it is the highest-degree term.
Similarly, the "*leading coefficient*" is the coefficient of the leading term.



TODO common multiples
==================================================

just like numbers' common factors,
terms can have least common factors.

you take the LCF of each of their parts,
and multiply them together to get the LCM.

~~~
8n^3 & 6n -> 24n^3
~~~





Polynomial Long Division
==================================================

There is a technique for long-dividng polynomials by each other by hand.
It yields a quotient-polynomial and a remainder-polynomial.
The process is as follows.

First, start with one polynomial divided by another.
(in standard form)
~~~
(16x^3 - 16x^2 + 15x - 16)  /  (4x - 3)
~~~

Write it out as you would with typical long division:
~~~

       +-------------------------
4x - 3 | 16x^3 - 16x^2 + 15x - 16
~~~

divide the leading terms:
~~~
16xxx / 4x = 4xx
~~~

To get:
~~~
          4x^2
       +-------------------------
4x - 3 | 16x^3 - 16x^2 + 15x - 16
~~~

Then, multiply that (4xx) by (4x - 3):
~~~
4xx(4x - 3) = 16xxx - 12xx
~~~

And using that:
~~~
          4x^2
       +-------------------------
4x - 3 | 16x^3 - 16x^2 + 15x - 16
       -(16x^3 - 12x^2)    |
       ----------------    V
                 -4x^2 + 15x - 16
~~~

Now, repeat:

~~~
-4xx / 4x = -x
(4x - 3) * -x = (-4xx + 3x)

          4x^2  -   x
       +-------------------------
4x - 3 | 16x^3 - 16x^2 + 15x - 16
       -(16x^3 - 12x^2)    |
       ----------------    V
                 -4x^2 + 15x - 16
               -(-4x^2 +  3x)  |
               --------------  V
                         12x - 16

12x/4x = 3
3(4x - 3) = (12x - 9)

          4x^2 - x     +  3
       +-------------------------
4x - 3 | 16x^3 - 16x^2 + 15x - 16
       -(16x^3 - 12x^2)    |
       ----------------    V
                 -4x^2 + 15x - 16
               -(-4x^2 +  3x)  |
               --------------  V
                         12x - 16
                       -(12x -  9)
                       -----------
                               -7
~~~

We know we are finished when
the degree of the divisor is
greater than the degree of the
remaining expression.

* `4xx - x + 3` is the quotient.
* `-7` is our remainder.

Including the remainder, we would write it out as:

	4xx - x + 3 + (-7)/(4x - 3)
