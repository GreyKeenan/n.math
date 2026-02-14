
<br>

<!-- INDEX -->
* Goals
* Rules
  * Multicharacter names
* Aliases, Compound Symbols, and Applications of Rules

<br>


Goals
==================================================

* represent equations using ascii
* reminiscent of the actual symbols.
  * you won't forget the actual symbols in place of these aliases
  * if you know the actual symbols/names,
    these should be mostly readable without this rules page
* extentable.
  I can add to it as I learn about new symbols.
* convenient to type
* visually clear
* NOT trying to be a programming language.
  It is trying to reflect actual math notation,
  which has symbolic conflicts all the time,
  so context is still king.


Rules
==================================================

Superscript and Subscript
~~~
x^s
x^(superscript)
x[subscript]

_^(superscript)[subscript]    script-text above/below nothing

x^(-)       drawing a line above to denote something
~~~

Alternative subscript:
~~~
X_subscript

x_1, x_2

~~~

Multiline Equations
~~~
/   script   multiline
:  x       = ---------
\   script    formula
~~~

Operator disambiguation

> particularly where programming habits differ

~~~
x /  x      infinite-precision division
x // x      integer division

x**x        power-of, superscript alternative

!x          not 'x' (unless context implies subfactorial)
            Unfortunately, the habit is too strong to prohibit this one.
x!          'x' factorial
:factorial:x

x^s         superscript
x^^s        tetration
x^^^s       etc

=>          necessitates/requires/implies
            NOT 'lambda'

log(x)      Is preseumed to be log-10, not log-2
log10(x)    Is preferred anyways
log2(x)

~~~

Multicharacter Names & Compound Symbols
--------------------------------------------------

In the interest of being intuitive and descriptive,
aliases for symbols should either resemble the symbol
or be a descriptive name when that is not practical.
This necessitates multi-letter variable names, though.

In many cases, that is not an issue.
Consider:
~~~
x = a or b
~~~

Sometimes, though, that could be ambiguous.
Consider if there were `o` and `r` variables floating around
within the broader context of the equation.
In those cases, multicharacter names or compound symbols
may be enclosed in `:` colons for clarity:
~~~
o = 10
r = 7
...
x = a :or: b
~~~

> (maybe thats a bad example?)

I would use backticks,
but since many of these notes will be in markdown,
I don't want to deal with escaping or double-backticking and whatnot.

Generally, the use of `:` for a ratio or "given" would be distinguishable,
but if it is unclear,
a `:` followed by whitespace is never a name-identifying `:`.

When enclosing a function-variable-name in `:` colons,
the parentheses remain outside:
~~~
:choose:(n, k)
:sin:(x)
~~~

Finally, compound symbols may also need to be enclosed in `:`s for clarity,
though I am having trouble imagining a case where
`:`s outperform clarity through spaces.
Still, its an option for whenever it may be necessary.


Aliases, Compound Symbols, and Applications of Rules
==================================================

Here's a list of some common aliases or compound symbols I might use.
Others names can be used in their place as well,
but I'll try to stick to these going forwards.

Names should be intuitive,
both for the aliases listed here
as well as any used ad-hoc elsewhere.

These are meant to elude to the actual symbols used for them,
so that I can try not to forget those when I'm actually writing out stuff.

~~~
* alias name[?:further consideration needed]
  * additional aliases/compound-symbols, listed by decreasing preference
  * ...
~~~

In general, or if no additional aliases are given,
then alias name should be used as the multi-letter-variable-name,
with underscores.

For symbols with lowercase & uppercase variants,
the variable name will be given in lowercase or all-uppercase as appropriate.
In general, the full-names are preferred for readability,
but that can be annoying with repetetive instances.

---

* aleph null?
* always false
  * `false`
  * see "perpendicular"
* always true
  * `true`
* and
  * `/\`
* angle
  * `/_`
* approximately equal?
* because?
* beth null?
* binomial coefficient
  * `choose(n, k)`
* cieling?
  * see "rounding brackets"
  * `ciel(x)`
  * `cieling(x)`
* complement of a set
  * `-{...}`
  * `!{...}`
  * `{...}^c`
  * `{...}^(-)`
* congruence?
* dagger?
* degrees?
* delta?
  * lowercase
  * uppercase
* element of a set
  * `x CE {...}`
* entails
  * `|-`
  * `|=` (semantic)
* epsilon?
* floor
  * see "rounding brackets"
  * `floor(x)`
* for all?
* implies
  * `=>`
  * `<=>`
* infinity?
  * `inf`
* integral?
* intersect
  * `Uand`
* join
  * `><`
* lambda?
* minus-or-plus
  * `-[+]`
  * `-/+`
* mu?
* not
  * `!x`
    (see disambiguation with factorial)
* null set
  * `{}`
  * `{/}`
* omega?
  * lowercase
  * uppercase
* or
  * `\/`
* order?
* parallel
  * `||`
* partial?
* perpendicular
  * `_|_`
* phi?
  * lowercase
  * uppercase
* pi
  * lowercase
    * `tt`
    * `pi`
  * uppercase
    * `TT`
    * `PI`
* plus-or-minus
  * `+[-]`
  * `+/-`
* possibly
  * `<>`
* power set of?
* proportional
  * `CX`
  * `XC` (inverse)
* psi?
* radical
  * `vT`
    * `vT^3 27 = 3`
  * `rad`
* riemann's thingamabob?
* rounding brackets
  * `[_` (floor)
  * `*]` (cieling)
* set difference
  * Just use a regular `-`.
* sigma?
  * lowercase
  * uppercase
* triple bar?
* subset of?
  * `C=`
* tau?
  * lowercase
  * uppercase
* there exists?
* therefore?
* to
  * `->`
* union
  * `Uor`

---

named sets

* complex numbers
  * `Ccomplexes`
  * `{CC}`
* integers
  * `Zintegers`
  * `{ZZ}`
* matrices
  * `Mmatrices`
  * `{MM}`
* natural numbers
  * `Nnaturals`
  * `{NN}`
* quaternions
  * `Hquaternions`
  * `{HH}`
* rational numbers
  * `Qrationals`
  * `{QQ}`
* real numbers
  * `Rreals`
  * `{RR}`

---
<br>
