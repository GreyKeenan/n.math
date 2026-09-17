
#set page(columns:2)

#let lima = $display(lim_(x->a))$
#let lim0 = $display(lim_(x->0))$
#let limi = $display(lim_(x-> plus.minus oo))$

/*
$lima f(x) = L \
"for every" epsilon > 0,
delta "exists where if" 0 < |x - a| < delta "then" |f(x) - L| < epsilon.
$
*/

#title[Limits Digest]

*Definition*

$lima f(x) = L <=>$ for every $epsilon > 0$,
$delta$ exists where if $0 < |x - a| < delta$ then $|f(x) - L| < epsilon$.

*Properties*

$lima x = a \
lima C = C \
lima C f(x) = C dot lima f(x) \
lima (f(x) + g(x)) = lima f(x) + lima g(x) \
lima (f(x) times g(x)) = lima f(x) times lima g(x) \
lima 1/f(x) = 1/( lima f(x) ) \
cases(
lima (f(g(x))) = f(lima g(x)),
"if f(x) is continuous there",
) \
\
lima (f(x))^n = (lima f(x))^n \
lima root(n, f(x)) = root(n, lima f(x)) \
"where" n in NN_(>0) \
"and if" n "is even, positive root is assumed"
$

*Inequalities*

#let ee = $lt.eq.gt$

$f(x) ee g(x) "near" x=a \
=> lima f(x) ee lima g(x) \
$

*The Squeeze Theorem*

If $f(x) <= g(x) <= h(x)$ near $x=a$, \
and $lima f(x) = lima h(x)$, \
then $lima g(x) = lima f(x)$.

*Infinity Terminology*

"Infinite Limit" $<=>$ vertical asymptote. \
$lima f(x) = plus.minus oo$ \

"Limit at Infinity" $<=>$ horizontal asymptote. \
$limi f(x) = a$ \

"Infinite Limit at Infinity" $<=>$ no asymptote. \
$limi f(x) = plus.minus oo$ \


#colbreak()

*TODO*

- indeterminate forms
- towards 0/inf patterns
- one-directional limits
- higher-d limits
