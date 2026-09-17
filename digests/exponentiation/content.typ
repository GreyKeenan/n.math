#set page(columns:2)
#title[Exponentiation Digest]

*Exponents*

$x^0 &= 1 \
x^1 &= x \
x^2 &= x dot x \
x^3 &= x dot x dot x \
&... \
$

$(b^x)^y = (b^y)^x = b^(x y) \
b^(-x) = 1/(b^x) \
a^x dot b^x = (a b)^x \
b^x dot b^y = b^(x+y) \
b^x slash b^y = b^(x-y) \
$

*Roots*

$b^x = y <=> b = root(x, y) \
root(0, b) "is undefined" \
$

$root(x, b^x) = (root(x, b))^x = cases(
	b &"if" x "is odd",
	|b| &"if" x "is even",
) \
$

$root(x, b) = b^(1/x) \
$

$sqrt(x) = root(2, x) \
$

*Logarithms*

$b^x = y <=> log_b (y) = x \
b^1 = b <=> log_b (b) = 1 \
b^0 = 1 <=> log_b (1) = 0 \
log_b => b > 0, b != 1 \
log_b (z) "is undefined if" z <= 0 \
$

$log_b (b^x) = b^(log_b (x)) = x \
$

$log_b (x^y) = y dot log_b (x) \
log_b (x dot y) = log(x) + log(y) \
log_b (x slash y) = log(x) - log(y) \
$

$( log_a (x) ) / ( log_a (b) ) = log_b (x) \
1/( log_x (b) ) = log_b (x) \
log_b (a) dot log_a (x) = log_b (x) \
$


$log(x) = log_10(x) \
ln(x) = log_e (x) \
$

#colbreak()

*TODO*

- graphs
  - < 1 and > 1 base variants
- exponential function $e^x$
- $sqrt(-1)$
- calculus?
