Logic
==================================================

<br>

<!-- INDEX -->
* not, or, and and
* Conditions
* Quantifiers

* References

<br>


not, or, and and
==================================================

`~` or `!` can be NOT, in my notes.
`~` is typical in math or logic.
`!` is expected in programming.
~~~
~1 = 0
!0 = 1
~~~

VWEDGE is `or`
~~~
1 :VWEDGE: 1 = 1
1 :VWEDGE: 0 = 1
0 :VWEDGE: 1 = 1
0 :VWEDGE: 0 = 0
~~~

`AWEDGE` or `&` are `and`
~~~
1 :AWEDGE: 1 = 1
1 :AWEDGE: 0 = 0
0 :AWEDGE: 1 = 0
0 :AWEDGE: 0 = 0
~~~
`and` is the same as: `!(!a :VWEDGE: !b)`


Conditions
==================================================

~~~
(a => b):
	"if a, then b"
	"a implies b"
	"b requires a"
	...

	converse: (b => a)

(a <=> b) == ((a => b) :AWEDGE: (b => a))
	"a if and only if b"
	"a is a necessary and sufficient condition for b"

!(a => b) == a :AWEDGE: ~p
~~~

There is alternative syntax with a sideways 'U' shape thing.
I think it is more used in logic rather than math.


Quantifiers
==================================================

there are 2 main quantifiers:

* "for all/every"
* "there exists/is"

For all is denoted by an upside-down A, or here by `AVALL`
There exists is denoted by a mirrored E, or here by `EEXISTS`
~~~
:AVALL: prime 'p', :VRAD:p !:CE: {QRATIONALS}
# for all primes 'p', the square root of p is not in the rational numbers
~~~

When negated, they transform into each other.
Here, of course, the EEXISTS statement is false.
~~~
!(:AVALL: prime 'p', :VRAD:p !:CE: {QRATIONALS}) ==
:EEXISTS: prime 'p' where :VRAD:p :CE: {QRATIONALS}

# there exists a prime 'p' where the square root of p is in the rational numbers
~~~





References
==================================================

[^1]: https://youtu.be/L08kpjgq9vk

Conditional Statements \
@MichaelPennMath
<https://youtu.be/L08kpjgq9vk>

[^2]: https://youtu.be/qML2CwPjPk8

Quantifiers. \
@MichaelPennMath
<https://youtu.be/qML2CwPjPk8>
