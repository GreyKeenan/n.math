Functions in Mathematics
==================================================

Functions have a more-specific meaning
in mathematics than programming.

They're mostly simple,
but theres a lot of undesigned terminology & notation `:/`.

<br>

<!-- INDEX -->
* More Terminology
* Partial Functions
* Multivariate Functions
  * Multivalued Functions
* Composing Functions
* the Inverse of a function

<br>


A function takes a set {X} as input,
and transforms each element of {X}
to exactly one element of set {Y}.
Multiple elements of {X}
may map to the same element of {Y}.
You might say that "f maps x to y".

The input-set {X} is the *domain*,
and the output-set {Y} is the *codomain*.

Functions are typicall denoted as:
~~~
f(x)
~~~

This is read as "f of x" or "f at x".
`f` is typically used,
but `g` or `h` are seen as well.
`x` is usually the input.

Alternatives:
~~~
f x
  # parentheses can be omitted when not ambiguous
sin x
log x

f[x]
  # sometimes the argument is given as subscript
  # this is extra common for functions whose arguments
  # are natural numbers,
  # making it equivalent to indexing an ordered list

f(.)
  # sometimes used to avoid ambiguity with an 'x' variable
~~~

Functions are typically represented as a line,
graphing `(x, f(x))`.
This is the *graph of the function*.
You may also notice how this relates to
the cartesian products of the domain sets.

When defining functions with sets, the notation is:
~~~
f : {X} -> {Y}
~~~

For brevity, the sets may not be the *precise* domains,
but just broader sets which contain the actual domains.

Or, you can define a function without naming it
and by specifying element transformations,
rather than overall domain/codomain specification.
~~~
x -> y
~~~

An example of this is the "square function":
~~~
x -> x^2
~~~


More Terminology
==================================================

* *image*:
  * The "image" of a input value is its output value.
  * The "image" of a set of input values
    is a set of images of each.
  * The "image" of a function is the codomain.
* *preimage* (or "inverse image"):
  * The "preimage" of an output value
    is the set of input values that can produce it.
  * The "preimage" of a set of output values
    is a set of preimages of each. (set of sets)
  * The "preimage" of a function is the domain.
* *range*:
  The "range" of a functon refers to its image/codomain.


Partial Functions
==================================================

With a partial function,
some `x` input values
may have undefined output values.
That is to say,
not every element of the domain
has a corresponding element in the codomain.

In reality, this just means that the domain of the function
is a subset of the domain of an ordinary function,
since if outputs for an input are undefined,
those inputs arent really part of the input set.
However, sometimes it is not possible or practical
to determine the true domain of a function,
so treating it as a partial function is applicable.

In some contexts, the term "function" alone implies
a partial function.

* *real function*:
  Any function which is
  a partial function of `:RREALS:`
* *complex function*:
  Any function which is a partial function of `:CCOMPLEXES:`.
  This is difficult to define in practice.
  (Riemann Hypothesis TODO)
* TODO computability theory, general recursive function


Multivariate Functions
==================================================

aka:
multivariable func,
function of several variables

Rather than having multiple domains,
its domain-elements are tuples.
You do not need to add a second layer of parentheses, though.

~~~
f(:var1:, :var2:, :var3:, ...)
~~~

*bivariate function*: multivariable func with 2 variables


Multivalued Functions
--------------------------------------------------

aka:
multiple-valued,
many-valued,
multifunction

A function which has more than 1 potential output value for
at least 1 of its input values.



Difference Quotient
==================================================

The difference quotient of a function
is a way to measure the rate-of-change of that function
when its input changes by a small interval.

~~~
/                f(x + h) - f(x)
: dif_quotient = ---------------
\                       h
~~~

Essentially,
the difference quotient is just the slope between
points on a graphed-function.
This can differ from the traditional 'm' slope in
it accounts for the fact that
the slope may be different at different points of the line
for different inputs `h`.

~~~

f(x) = 10x

( f(x + h) - f(x) )/h
( 10(x+h) - 10x ) /h
( 10x + 10h - 10x )/h
10h/h
10



( f(1 + 1) - f(1) )/1 = 10
( f(1 + 2) - f(1) )/2 = 10

-----

f(x) = 10x + 1

( f(x + h) - f(x) )/h
( 10(x + h) + 1 + -10x + -1 )/h = 10 again


so, the difference quotient is just the slope ig,
but it can be in a more-complex form than traditional 'm'.

~~~

> also see [ex/precalculus/difQuotient.txt]("ex/precalculus/difQuotient.txt").


Composing Functions
==================================================

This is a simple thing made to seem more complicated
by the math notation and language around it.

> maybe its more confusing if you aren't coming from programming?

Composing functions is just about using the outputs
of one function as inputs to another.
Rather than always doing:
~~~
f_1( f_2(x) ) ...
~~~
There is special notation
that can be used to combine the two.
(The composedWith symbol is like a hollow circle or bullet point.)
~~~
(f_1 :composedWith: f_2)(x) = f_1(f_2(x))
~~~

This is known as a "*composite function*".

Of course, if you are doing this often,
you can solve the outer function for the inner function
in order to get a new equation/function as a potential shortcut
for the composite function.


the Inverse of a function
==================================================

The inverse of a function is often denoted as:
~~~
regular: f(x)
inverse: f^(-1)(x)
~~~

The inverse of a `function_a`
is the function `function_b`
where `f_a(x) = y` and `f_b(y) = x`.

In other words, it undoes whatever transformation
the original function does.
~~~
f^(-1)(f(x)) = x
~~~

To get the inverse:
~~~
f(x) = ax + b
x = a(f(x)) + b
solve for f(x)
~~~

Of course,
not all functions can have an inverse.
If multiple inputs can result in the same output,
a true inverse is impossible
since you would need different outputs
from the same inputs.

> ones that can be inverted are called "*invertible functions*".

In these cases,
you *could* enforce certain rules
on `x` to restrict the domain of the function
in order to make it invertible.

A definitive way to determine whether functions are the inverse of each other
is to simplify `f^(-1)(f(x))` where `f^(-1)` is the potential inverse.
If they are inverse, it will simplify to just `x`.


Math on functions
==================================================

You may see functions combined and notated like:
~~~
f & g are functions

(f :operator: g)(x) = ...

where "operator" is addition, subtraction, multiplication, division, etc
~~~

All this means is you take the formulas for those function
and multiply/add/etc them together.

~~~
f(x) = 4x + 1
g(x) = 10/x

(f + g)(x) = (4x + 1) + (10/x)
(f / g)(3) = (4(3) + 1) / (10/3)
~~~

This may seem superfluous coming from a programming standpoint,
but it can b useful.



