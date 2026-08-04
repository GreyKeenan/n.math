#import "universal.typ":*

= Multivariable Derivatives

What does it mean to take the derivative of a multivariate function?
Before calculating such derivatives,
let us first try and build an intuitive conceptual understanding
of how univariate derivatives generalize into higher dimensions.


== A Geometric Introduction

Geometrically, the derivative is a slope.
It's easy to see that a function of one variable has a single slope at any point.
It's a line, and so the slope is the direction in which the line is pointing.

A 3d function, though, isn't a line; it's a surface.
And so, what is the "slope" of a surface?
Theoretically, from some point on the surface,
we could draw a line in any direction and have a different slope.
There are infinite "slopes" in the same way that there were infinite limit-directions.
So, at least in some sense,
we might expect there to be infinite derivative-like values associated with some point.
Each of these is called a "directional derivative", and they will be discussed below.

#TODO visual

Now, let us consider tangents.
Recall that we define the slope of a curve at some point
to be the slope of the tangent to the curve at that point.
If a surface has infinite slopes at some point,
we could expect it to also have infinite tangents at that point.

#TODO visual

Notice that the tangets, though, are coplanar with each other.
And so, considering all of the tangents at once,
we can see that a 2d function has a single tangent _plane_ at any point.
And so, we can also relate the derivative of a multivariate function
to some _single_ concept rather than infinite slopes.

#TODO visual

Now, in order to describe a plane,
it is sufficient to have two vectors from within that plane.
So, in theory, we need only two of our directional derivatives
in order to describe the entire tangent plane.
These particular derivatives are called "partial derivatives", and they will be discussed next.

Finally, extrapolating into higher dimensions, we might correctly guess that
some point on an #nd volume has an #nd tangent volume.
Therefore, we would need $n$ partial derivatives
in order to describe the tangent to a function of $n$ variables.
(Notice that this is consistent with our understanding of a function of 1 variable, as well.)


== Partial Derivatives


