Logarithm notes
==================================================

<br>

<!-- INDEX -->
* Logarithm rules/behavior to remember

* Resources

<br>


Logarithms have a base `b` and an operand `x`.
They evaluate to the power that you would have to raise `b` to
in order to get `x`.

~~~
log[b]x = a
b^a = x
~~~

Generally, the base of the logarithm is implied rather than explicit.
The typical is the "natural logarithm",
where the base is a constant known as `e`.
`e` is approximately `2.71828`, and is irrational.

log with base 10 is common as well,
and base 2 is very common in computing because of binary.

Generally, `log` is either implicitly in base 10 or base `e`.
`ln(x)` is sometimes used specifically for base `e`,
and in that context `log` typically is base 10.

---

To me, log is weird because its really more on the tier
of an operator rather than a function or constant or something.
Log, root, and exponentiation go hand in hand.
Its semantically like a function or constant or something though.

---

The important thing to understand about logarithms is how they behave.
They are the inverse of exponential growth.
Instead of rapidly accelerating,
they decelerate and give diminishing returns.


Logarithm rules/behavior to remember
==================================================

~~~
log[b](x) = 1
b^1 = b
~~~

A logarithm cannot be taken for <= 0.
~~~
log[b](0) = a
b^a != 0

this doesnt work, unless b = 0 which fits the earlier rule instead
~~~

`log(1)` of any base is `0`.
~~~
b^0 = 1
log[b](1) = 0
~~~

~~~

log(xy) = log(x) + log(y)
log(x / y) = log(x) - log(y)
log(x^b) = b * log(x)
log[b](x) = 1 / log[x](b)
log[b](x) = log[a](x) / log[a](b)
	where 'a' can be anything, typically e

b^(log[b](x)) = x
~~~

Also, a logarithm can be applied to both sides of an equation
and preserve equality.

With this in mind,
we can use logarithms to get variables out of exponents.
If we were trying to isolate `x`:

~~~
a^x = b
log(a^x) = log(b)
xlog(a) = log(b)
x = log(a) / log(b)
~~~





Resources
==================================================

* <https://www.ncl.ac.uk/webtemplate/ask-assets/external/maths-resources/economics/arithmetic/logarithms.html>

