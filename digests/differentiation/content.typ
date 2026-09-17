#set page(columns:2)
#title[Differentiation Digest]

#let df = $d f$
#let dg = $d g$
#let dx = $d x$

$f'(x) = d/dx f(x) = df/dx \
$

*Definition*

$f'(x) = display(lim_(h->0)) ( f(x + h) - f(x) )/h \
f'(x) = display(lim_(x->a)) ( f(a) - f(x) )/( x - a ) \
$

*Patterns*

$c' = 0 \
x' = 1 \
( c f(x) )' = c dot f'(x) \
\
(x^c)' = c x^(c-1) \
(c^x)' = ln(c) dot c^x \ //=> (e^x)' = e^x \
log'_c |x| = 1/(ln(c) dot x) \ //=> ln'|x| = 1/x \
// (x^x)' = x^x (ln(x) + 1) \
\
(f(x) + g(x))' = f'(x) + g'(x) \
( f(x) g(x) )' = f'(x)g(x) + f(x)g'(x) \
( f(x)/g(x) )' = ( f'(x)g(x) - f(x)g'(x) )/((g(x))^2) \
( f(x)^g(x) )' = f(x)^(g(x))( g'(x)ln(f(x)) + (f'(x)g(x))/f(x) ) \
\
d/dx f(g(x)) = df/dg dot dg/dx => cases(
	d/dx (f(x))^c = c (f(x))^(c - 1) dot f'(x),
	d/dx c^f(x) = ln(c) dot c^f(x) dot f'(x),
	d/dx log'_c |f(x)| = 1/(ln(c) dot f(x)) dot f'(x),
)

$

*Trigonometric Derivatives*

$sin'(x) = cos(x)
	\ cos'(x) = -sin(x)
	\ tan'(x) = sec^2(x)
	\ sec'(x) = sec(x)tan(x)
	\ cot'(x) = -csc^2(x)
	\ csc'(x) = -csc(x)cos(x)
	\ arcsin'(x) = 1/sqrt(1 - x^2)
	\ arctan'(x) = 1/(1 + x^2)
	\ "arcsec"'(x) = 1/( |x| sqrt(x^2 - 1))
	\ arccos'(x) = -arcsin'(x) //-1/sqrt( 1 - x^2 )
	\ "arccot"'(x) = -arctan'(x)
	\ "arccsc"'(x) = -"arcsec"'(x)
$

#colbreak()

*TODO*

- Should trig derivatives be here, or should they just be in the trig digest?
  - hyperbolic trig?
- Does it need $e^x$ and $ln(x)$ explicitly?
- $x^x$?
- Partial derivatives?
