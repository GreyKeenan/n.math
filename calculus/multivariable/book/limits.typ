
#import "universal.typ":*

= Multivariable Limits

Just as we are introduced to single-variable calculus by beginning with limits,
it is useful to see multivariable calculus first through the lens of multivariable limits.
We won't end up _directly_ needing most of this later,
but an intuitive understanding of this behavior will help us understand the differences
between multivariable and single-variable infinitessimals.

First, let's ask what it means to take the limit of some function $f(x,y)$.
Well, recall that the limit of $g(x)$ as $x$ goes to $a$
is the value that $g$ approaches as the distance between $x$ and $a$ decreases.
Similarly, the limit of $f(x,y)$ as $(x,y)$ goes to $(a,b)$
is the value that $f$ approaches as the distance between $(x,y)$ and $(a,b)$ decreases.

#TODO visuals

This makes multivariable limits seem very similar to single-variable ones,
and they are, but there's a catch.
With a 1d limit, or the limit of a single-variable function,
$x$ can only approach $a$ in two ways: from above or from below.
With a 2d or higher limit, $(x,y)$ can approach
the point $(a,b)$ from infinite different directions
or along any possible path through a 2d plane.
Now, recall that with 1d limits, both approaches (above and below)
must agree in order for the limit to exist.
Similarly, with multivariable limits,
*every approach must agree in order for the limit to exist.*
As you might imagine, this makes it more difficult to prove that limits exist.

#TODO techniques for solving, factoring out, a var, grouping and substituting, parametrics,
higher-dimensions, a generalized approach?, iterated limits, squeeze theorem techniques


