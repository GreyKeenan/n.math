Symbology
========================================

Colons may be used to help indicate when
some string of characters is meant to represent a single symbol.
For example, `:x:` could differentiate the cross-product operator
from the variable `x`.

The use of symbols here
are meant to mimic real mathematic symbols
as closely as possible.
When there are 1:1 equivalents
(e.g. `->`, `=>`, `|x|`, `<1, 2>`, `f'(x)`, `iff`)
I will not specify their details on this page.
You should recognize that these notation conventions are loose,
and can be used loosely & flexibly just like real math notation.
It's not a programming language. Context is king.

Greek symbols are typically identified by their name
with capitalization indicated,
e.g. `lambda`, `SIGMA`, `pi`, or `theta`.

Functions, likewise, are called by name.
Its up to you to make sure its clear that
the function name isn't a string of one-letter variables.
The parentheses may or may not be omitted
if there is only one argument.
E.g. `sin(x) or sinx`, `choose(n,k)`.

Superscript and subscript:

	x^(superscript)
	x^[superscript]
	x{superscript}   <- on occasion
	x^s
	x^1234
	x^-1234

	x[subscript]
	x_(subscript)
	x_[subscript]
	x_s   <- for single characters
	x_1234
	x_-1234

	x123 <- may indicate subscript rather than multiplication

`{R}` or `{RR}` could be used to indicate the set of real numbers, etc.

(in)equalities:

	= equal
	=== extra equal, "is defined as", etc
	~= approximately equal
	!= not equal
	>= greater or equal
	<= less or equal /or/ reverse of `=>` symbol

Multiline things are often denoted with big parentheses:

	/   like a
	:  --------------
	\   big fraction

	/ n        <- or perhaps the choose function/that weird vector notation
	\ k

	/  superscript
	: x
	\  subscript


### Specific conventions

`root(x) = x^[1/2]`.
`root[n](x) = x^[1/n]`.
`sqrt` and `sqrt[n]` may be used as well.

`xV` is often used as an equivalent to `x^[->]` to indicate a vector. \
`*` usually refers to the dot product, not the cross product.

`S` is often used in place of `INT` or the long-S integral symbol. \
`Z` is often used in place of `SUM` or `SIGMA`. \
`TT` is often used in place of `PRODUCT` or `PI`. \
`a` is sometimes used for `del`. \
`N` is sometimes used for `NABLA`.

