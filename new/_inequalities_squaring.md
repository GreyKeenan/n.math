
squaring inequalities is weird.
Consider that when we multiply inequalities by neg or pos
we have to flip the sign or not.
What happens when we square it, then,
particularly when we don't know if a side is neg/pos?

	does  x > y  mean  xx > yy ?

> <https://math.stackexchange.com/questions/372188/should-the-sign-be-reversed-if-i-square-both-sides-of-an-inequality>

Consider

	xx > yy <=> xx - yy > 0 <=> (x + y)(x - y) > 0

	if sgn(x + y) = sgn(x - y), xx > yy.
	if sgn(x + y) != sgn(x - y), xx - yy < 0, so xx < yy.

	x - y > 0 <=> x > y

	so:
	if x > y:
	  if x + y > 0:
	    xx > yy
	  if x + y < 0:
	    xx < yy
	if x < y:
	  if x + y < 0:
	    xx > yy
	  if x + y > 0
	    xx < yy
	if x +/- y = 0:
	  xx = yy

---

Another way to think about it, perhaps more practical, is:

	x > y <=> sgn(x)xx > sgn(y)yy

	Then, check the three cases:
	x > 0, y > 0
	x > 0, y < 0
	x < 0, y < 0
	(x < 0, y > 0 is a contradiction with above)

---

The top answer lays it out differently.
Think of it in these terms:

	f(t) = t^2

	x > y
	f(x) >? f(y)

Here `f(t)` is increasing when `x > 0`, and decreasing when `x < 0`.

> (is it? Isn't it just always increasing? I am confused.
  Perhaps by "increasing" they mean increasing in absolute-value?
  No, that's not true either.
  It's always increasing in absolute value.
  I am confused by what they mean with the term "increasing".)
>
> Okay. We consider it "decreasing" when its negative
  because as the input `t` goes to the right, `f(t)` gets lower and lower.
  It has a *decreasing slope*.
  I guess that's kind of obvious in hindsight.

When applying an increasing function to both sides of an inequality,
we keep the original order.
When applying a decreasing function to both sides of the inequality,
we reverse the order.
So:

	if x > y & x > 0 & y > 0
	then xx > yy

	if x > y & x < 0 & y < 0
	then xx < yy

> That's the part that made sense already, though.
  Just imagine that you multiply both sides by negative one before squaring.
  Of course that's the outcome.
  What about when they're different?

"I leave it to you to think, what can you deduce about the truth of x > y
if x and y have opposite signs."

> oh wow thanks for the help.
