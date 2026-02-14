Summation
==================================================

<br>

<!-- INDEX -->
* Syntax
  * Basic
  * Alternatives
* Formulas
* Product Notation

* References

<br>

A summation is math notation's way of doing a loop
and incrementing a variable with addition.
Its a bit cumbersome and antequated syntactically,
but it does the job.

There is a multiplication equivalent as well.
Its awkward because theres unique notation
for each operation loop, rather than a single
looping notation whih can be given an operation.


Syntax
==================================================

Basic
--------------------------------------------------
~~~
:ZSUM:[i = :bottom:]^(:top:) :to_add:
~~~

The subtext defines a variable (i) and sets it to a lower bound (bottom).
The supertext defines the upper-bound, which is inclusive.
Eg, it iterates through `[bottom, top]`

`to_add` is a statement which is repeatedly added to itself.
The first time, (i) in the statement == bottom.
Then, it equals bottom + 1.
Next, bottom + 2. Etc.
~~~
:ZSUM:[i = 1]^(5) 2i == 2(1) + 2(2) + 2(3) + 2(4) + 2(5) == 30

this is equivalent to the C code:
\/\/\/
int total = 0;
for (int i = 0; i <= 5; ++i) {
    total += 2 * i;
}
return total;
/\/\/\
~~~

Traditionally, i or perhaps (j, k, n) are used as the summation var.

Note that an "empty sum" is possible where the looping conditions
prevent it from iterating at all.
The empty sum == 0.


Alternatives
--------------------------------------------------
~~~
:ZSUM:[e CE {...}]
	# iterates through all the elements in a set

:ZSUM:[:bottom: <= i < :top:]
	# iterates from bottom to top (exclusive)

:ZSUM:[d | n]
	# iterates through all positive integers which divide 'n'
~~~


Formulas
==================================================

Some specific summations can be converted to an equivalent formula.

~~~
:ZSUM:[i = 1]^(n) i == n(n + 1)/2
~~~


Product Notation
==================================================

Product notation is the multiplication equivalent.
Syntactically, it is exactly the same except
it uses the capital-Pi symbol,
and it is multiplication ofc.

~~~
:TTPROD:[i=:bottom:]^(:max:) :to_mul:

:TTPROD:[i=1]^(3) i + 1 == (1+1)(2+1)(3+1)
~~~





References
==================================================
