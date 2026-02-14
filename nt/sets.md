Sets
==================================================

<br>

<!-- INDEX -->
- Basic Syntax
- Common Sets
- Set Builder Notation
  - Examples:
- Powersets
- Sets with each other
  - Union
  - Intersection
  - Difference
  - Complement
- Cartesian Products
- Intervals and sets
- An "Indexing" set
  - Unions and Intersections with Indexing Sets

- References

<br>

Sets are a type of container for things.
A set contains elements.
A set does not contain any duplicate elements.
Sets are not ordered.

Sets can contain different types of elements, or other sets.


Basic Syntax
==================================================

~~~
{ element, element, element }
{ ... el, el, el, ... }
{ /* empty set */ }

{ 1, 2 } != { 1, 2, 3}
{ 2, 6 } == { 2, 6}

|{a, b}| == 2
|{}| == 0

|{ {}, {1, 2, 3}, {0, 2} }| == 3
	sets containing sets are written as such

n :CE: { ... }
	 n is in the set
n !:CE: { ... }
	n is not in the set

:set: = {a, b, c}
:set:[1] == a
:set:[3] == c
/* things are 1-indexed in math */
~~~


Misc Terms
==================================================

"cardinality": the cardinality of a set is its length

"singleton": A set with a cardinality of exactly 1


Common Sets
==================================================

~~~
natural numbers: { 1, 2, 3, 4 ... }
	NNATURALS
integers: { ... -2, -1, 0, 1, 2, ... }
	ZINTEGERS
rational numbers: { p/q | p :CE: {NNATURALS} & q :CE: {NNATURALS} & q != 0 }
	QRATIONALS
real numbers: "all real numbers" (proof is complex)
	RREALS
complex numbers: { a + bi | a :CE: {RREALS} & b :CE: {RREALS} & i i == -1 }
	CCOMPLEXES

length "cardinality" of each of these is infinite.
BUT: |{RREALS}| > |{NNATURALS}|
~~~


Set Builder Notation
==================================================

This is a way to define sets.
It stands in contrast to the "roster" method,
which is listing all elements of the set.


The pipe-symbol is sometimes instead represented with a colon.
When reading verbally, the symbol is "such that".
~~~
{ "general shape of elements" | "rules the element must satisfy" }
~~~

I think it is useful to consider these as:
`{"formula for an element" | "rules the variables in that formula must abide by"}`
This is technically less accurate of a description, though.

If a definition would leave nothing in the set,
that is of course defining the empty set.


Examples:
--------------------------------------------------

~~~
even integers: { 2n | n :CE: {ZINTEGERS} }
	/* the above example was given in the video,
	but would contain '0' which is not even */
	/* {n | n % 2 == 0 & n != 0} */
odd integers: { 2n + 1 | n :CE: {ZINTEGERS} }
primes: {n :CE: {NNATURALS} | if (p = a b) then (a == 1 or b == 1)}
~~~


Powersets
==================================================

The power set of a set "A" is the set of all subsets of "A".
It is typically denoted as `P(set)`

~~~
P({ a, b, c}) == {
	{},
	{a}, {b}, {c},
	{a, b}, {a, c}, {b, c},
	{a, b, c}
}

|P(set)| == 2^(|set|)
~~~


Sets with each other
==================================================

Union
--------------------------------------------------

union is like or-ing the sets together.
The resulting set contains everything which was in both of the others.
~~~
{ a, b } :UOR: { a, c} == { a, b, c }

/* why cant this just be a "+" */

A :UOR: B == { x | x :CE: A or x :CE: B }
~~~


Intersection
--------------------------------------------------

intersection is like and-ing the sets together.
The result contains everything which was in both.
~~~
{ a, b } :UPAND: { a, c } == { a }

A :UPAND: B == { x | x :CE: A and x :CE: B }
~~~


Difference
--------------------------------------------------

~~~
{ a, b } - { b, c } == { a }

A - B == { x | x :CE: A and x !:CE: B }
~~~

When subtracting sets, the `-` sign is sometimes tilted.


Complement
--------------------------------------------------

The complement is like the inversion of the set.
It contains everything not in the set,
when constrained by some sort of "univsersal set" which is
defined by the context you are working in.
For example, if working with all natural numbers in a problem,
the universal set would typically be all natural numbers.

It is denoted with a horizontal line over the top of a set,
or superscripted `c`.
I may also denote it with a `!` or `-` preceding it.
~~~
U = universal set
!A == U - A
~~~


Cartesian Products
==================================================

This is just a fancy name for multiplying sets together.
~~~
{ a, b } * { a, c } == { (a, a), (a, c), (b, a), (b, c) }
~~~

Notice that the resulting pairs are *ordered*, not sets themselves.

~~~
|A * B| == |A| * |B|
~~~


Intervals and sets
==================================================

Any range can be seen as a set, ofc, so
intervals can be conceptualized as sets.
~~~
[0, 3) == {n :CE: {RREALS} | 0 <= n < 3}
~~~


An "Indexing" set
========================================

**This section is NOT explaining the concept of indexing a set.**

"indexing sets" are sets used to index another set.
Any set can be an indexing set,
as long as it doesnt "overflow" the set that is being indexed

An indexing set is basically just a range/sequence that you use to index something.
You can think of it like the set produced by a for loop to index an array.

Indexing sets are notable because they can be used in looping operations.


Unions and Intersections with Indexing Sets
--------------------------------------------------

Indexing sets can be useful when indexing sets-of-sets.
The example below shows finite indexing.
Keep in mind that this can be useful for infinite indexing,
where the set of sets is infinite and the indexing set is infinite.

~~~
:setset: = {
	{ 1, 2, 3 },
	{ 2, 3, 4 },
	{ 3, 4, 5 }
}

indexing_set = {1, 2, 3}

:UOR:[i :CE: indexing_set] :setset:[i] == {1, 2, 3, 4, 5}
	# This performs a :UOR: for every set that is indexed.
:UPAND:[i :CE: indexing_set] :setset:[i] == {3}
	# same but a :UPAND:
~~~

in these cases, this is the equivalent to:
~~~
:UOR:[i = 1]^(4) :setset:[i]
:UPAND:[i = 1]^(4) :setset:[i]
~~~

Notice that the syntax is the same as the summation and product operators.


References
==================================================

[^1]: https://youtu.be/J4KVHd6ayjM

Basic Set Operations \
@MichaelPennMath
<https://youtu.be/J4KVHd6ayjM>

[^2]: https://youtu.be/FLO3ivUVDCQ

Basics of Sets | Cartesian Products \
@MichaelPennMath
<https://youtu.be/FLO3ivUVDCQ>

[^3]: https://youtu.be/L_shGzT_wEg

Introduction to sets \
@MichaelPennMath
<https://youtu.be/L_shGzT_wEg>

[^4]: https://youtu.be/ZoR93jR9Ok0

Indexed Sets \
@MichaelPennMath
<https://youtu.be/ZoR93jR9Ok0>

