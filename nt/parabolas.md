Parabolas
==================================================

<br>

<!-- INDEX -->

<br>

Forms:

* directix-focus
* vertex form
* standard form

### directix-focus:

~~~
for a vertical (opens up/down) parabola:
(x - h)^2 = 4p(y - k)

for a horizontal parabola:
(y - k)^2 = 4p(x - h)
~~~

where (h,k) is the *vertex*. (NOT THE FOCUS)

To convert *vertical* to vertex form, a = 1/(4p)
~~~
(1/(4p))(x - h)^2 + k = y
~~~

`p` is the value added to the vertex to get the focus.
Replace `focus` with either the focus X or Y for
horizontal & vertical parabolas respectively.
Similarly, replace `vertex` with H or K.
~~~
vertex + p = focus
~~~

Then, because `vertex` is directly between `focus` and `directix`:
~~~
vertex = (directix + focus) / 2

vertex + p = focus
p = focus - vertex
p = focus - (directix + focus)/2
p = (focus - directix) / 2
~~~

so finally, with that in mind,
we can plug it into the standard directix-focus form
to get a form without `p` or `k`.
Keep in mind that `vertex[2] == focus[2]`,
so in the example below `h = f[x]`.

(for vertical):
~~~
(x - h)^2 = 4( (f[y] - d)/2 )(y - (f[y] + d)/2)
(x - h)^2 = 2(f[y] - d)(y - (f[y] + d)/2)
~~~


### vertex form:

~~~
y = a(x - h)^2 + k
~~~

where (h,k) is the parabola vertex.


### Standard form:

~~~
y = axx + bx + c
~~~


