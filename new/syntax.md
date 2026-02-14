Notation Syntax
==================================================

Since these math notes are written entirely in ASCII,
conventions are needed to emulate real math notation.
These rules are not intended to be extensive or definite.
They are just a handful of tools to mimic actual math notation
on a case-by-case basis.

> In the rougher-notes, these may not be adhered to as consistently.


### superscript & subscript

	x^(superscript)
	x^[superscript]
	x^s     <--- a single item
	x^10    <--- superscripted 10, probably exponent

	x[subscript]
	x_s          <--- a single character
	x_(subscript)
	x_[subscript]


### multiline statements

	/   numerator
	:  -------------
	\   denominator

	 numerator
	-------------
	 denominator


### referencing symbols by name

Descriptive names can be used to denote specific mathematical symbols like:

	(f compose g)(x)
	summation[i = 1]^10

	lim[x->inf] 1/x

When necessary, to distinguish words from variables, colons may be used
(like discord emotes).

	if  :epsilon: > 0 ...
	:DELTA:y/:DELTA:x

	n :in: {naturals}

Finally, variables can be defined as shorthand.

	let D be :DELTA:
	Dy/Dx


### not factorial

Unfortunately, my programming habits die hard.
Consider an exclamation point as `:not:` before assuming factorial,
particularly when it precedes another symbol.
`:fact:` or `:factorial:` should be used to disambiguate when its unclear.


Elaborating
==================================================

Hopefully those quick notes were enough to get the idea.
Most of it should be intuitive.
In case it isn't, some specific conventions are elaborated on here:

Since its a little shorter than using superscript for low-degrees,
I prefer to write small exponents as:

	xx, xxx, xxxx

... within reason.

	b^^x, b^^^x, and so forth are used for tetration+

	{} is an empty set
	:CE: may be used as the set-contains-element symbol

	...
