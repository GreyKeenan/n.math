
#import "universal.typ":*

= Multivariable Limits

Just as limits help us understand derivatives and infinitessimals in singlevariable calculus,
it is useful to begin with multivariable limits here as ewll.
Understanding the differences between multivariable and singlevariable limits
will help build an intuition for
the differences between multivariable and signlevariable calculus as a whole.

== The Concept of Multivariable Limits

The limit of $g(x)$ as $x -> a$ is the value that $g$ approaches
as the distance between $x$ and $a$ decreases
on the domain of $g$, a 1d number line.

Similarly, the limit of $f(x,y)$ as $(x,y) -> (a,b)$
is the value that $f$ approaches
as the distance between the points $(x,y)$ and $(a,b)$ decreases
on the domain of $f$, a 2d plane.
And so forth for higher dimensions.

#TODO visual

This leads to some #terminology.
A function of two variables $f(x,y)$ is graphed in 3d space as $(x, y, f(x,y))$.
Its limit, however, is referred to as "2 dimensional" because the limit operates over $f$'s domain, $(x,y)$.
It follows, then, that a function of 1 variable has a 1d limit, or that a function of $n$ variables has a $n$d limit.

Now, with 1d limits, recall the concept of one-sided limits.
Because we are on a 1d line, $x$ can only approach $a$ from either the left or the right.
A "true" limit, then, only exists if both the left and right limits agree.
We will now generalize this concept to higher dimensions.

#let xy = $(x,y)$
#let ab = $(a,b)$

Let us consider the limit of $f(x,y) "as" (x,y) -> (a,b)$.
The points #xy and #ab are on a 2d plane, and so #xy can theoretially approach #ab
from infinite, straight-line directions,
as well as along any curved path which passes through #ab.

#TODO visual

In order to prove that a limit to exist,
we must show that _all paths_ agree.
With 1d limits, this was trivial since there were only 2 approaches, the left and right.
With 2d+ limits, we must show that this is true for all of the infinite possible paths.

#TODO notation, techniques for solving, factoring out a var, grouping and substituting, parametrics,
higher-dimensions, a generalized approach?, iterated limits, squeeze theorem techniques
