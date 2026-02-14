 ~~Squares and Roots~~ Exponentation
==================================================

TODO: scrap this file & do this right

<br>

<!-- INDEX -->
* ...
* A trick for eliminating roots
  * Alternative Representations

<br>


~~~
...

TODO

negative exponents: a^-b = (1/a)^b
~~~

<br>


A trick for eliminating roots
==================================================

There is a handy way to eliminate roots which are in the form
`root(a) - root(b)` or `root(a) + root(b)`.

---

See the pattern for `a - b`:

* `(a - b)(a + b) = aa - bb`
* `(a - b)(aa + ab + bb) = aaa - bbb`
* `(a - b)(aaa + aab + abb + bbb) = aaaa - bbbb`
* ...

Essentially,
`(a - b)` times `the sum of all combinations of a and b, (c - 1) terms long`
equals `a^c - b^c`.

This is similar to the binomial theorem,
but without the pascals triangle part.

Consider the simple case:
~~~
(a - b)(a + b)
a(a - b) + b(a - b)
aa - ab + ab - bb
aa - bb

(a - b)(aa + ab + bb)
aa(a - b) + ab(a - b) + bb(a - b)
aaa - aab + aab - abb + abb - bbb
aaa - bbb
~~~
So, they end up cancelling everything else out!

In other words:
~~~
c CE {NN} & c != 0;
(a - b)(SIGMA[i = 0]^(c-1) a^(c-1-i)b^i) = a^c - b^c
~~~

---

Similarly, see the pattern for `a + b`:

* `(x + y)(x - y)  =  xx + -yy` (same as before)
* `(x + y)(xx + -xy + yy)  =  xxx + yyy`
* `(x + y)(xxx + -xxy + xyy + -yyy)  =  xxxx + -yyyy`

`(x + y)` times
`(all combinations of x & y, (c - 1) long, with alternating +/-)`
is `(x^c + +/-y^c)`,
where `y` is negative when `c` is even.

Again, see how it plays out:
~~~
(x + y)(xx + -xy + yy)
xxx + xxy + -xxy + -xyy + xyy + yyy
xxx + yyy

(x + y)(xxx + -xxy + xyy + -yyy)
xxxx + xxxy + -xxxy + -xxyy + xxyy + xyyy + -xyyy + -yyyy
xxxx + -yyyy
~~~

Another way to put it would be:
~~~
f(x) = { 1; x % 2 = 0}    f(x) is -1 when x is odd and 1 otherwise
       {-1; x % 2 = 1}

c CE {NN} & c != 0;
x^c f(c)y^c = (x + y)(SIGMA[i = 0]^(c-1) f(i)x^(c-1-i)y^i)
~~~


Alternative Representations
--------------------------------------------------

Alternatively, the `(a - b)x` pattern can be represented recursively.
~~~
f(1) = a + b
x CE {NN} && x > 1; f(x) = af(x - 1) + b^x

f(3):
  a(f(3 - 1)) + b^3
  a(a(f(2 - 1)) + b^2) + b^3
  a(a(a + b) + b^2) + b^3
  a(aa + ab + bb) + bbb
  aaa + aab + abb + bbb

(a - b) * f(c - 1) = a^c - b^c
~~~

Alternatively alternatively, a more-confusing recursive option
with lower "time complexity" is:
~~~
f(1) = a + b
f(2) = aa + ab + bb
x CE {NN} && x > 2;
  f(x) = (a^[*x/2*] + b^[*x/2*])(1 + (x%2)(a - 1))f([_(x-1)/2_]) + (x%2)b^x

(the pattern):

a + b
aa + ab + bb
(aa + bb)(a + b)
(aa + bb)(aa + ab) + bbbb
(aaa + bbb)(aa + ab + bb)
(aaa + bbb)(aaa + aab + abb) + bbbbbb
	(aaa + bbb)a(aa + ab + bb) + bbbbbb
(aaaa + bbbb)(aaa + aab + abb + bbb)
	(aaaa + bbbb)(aa + bb)(a + b)
(aaaa + bbbb)(aaaa + aaab + aabb + abbb) + bbbbbbbb
	(aaaa + bbbb)a(aaa + aab + abb + bbb) + bbbbbbbb
	(aaaa + bbbb)(aa + bb)(aa + ab) + bbbbbbbb
~~~









~~~
TODO

vTx == |vTx|


* imaginary numbers, i = :VRAD:(-1)
  is essentially a unit.
  1i = i, ii = -1, -1i = -i, -i(-i) = 1
* tetration, how + to tetration is natural

  multiplication is repeated addition,
  and exponentation is repeatd multiplication.
  Tetration, then, is repeated ezponentation.


a^(b/c) = vT^c(a^b)

Handy because fractions can be simplified:
2^(2/4) = vT^4(2^2) = 1
2^(1/2) =vT^2(2^1) = 1
4^(3/2) = vT^2(4^3) = 8
4^(6/4) = vT^4(4^6) = 8


terms

* radical



a^b = a^(2*(b\2)) = (a^2)^(b/2)

2^2048 = (2^2)^1024 = (4^2)^512 = (16^2)^256 = 256^256

2^8 = 4^4 = 16^2





a^(-x) = a / a / a ... = 1/(a^x)




can have odd-roots of negatives

~~~
