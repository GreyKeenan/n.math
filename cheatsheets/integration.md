Integration Cheat-Sheet
========================================

<br>

<!-- INDEX -->
* [Fundamental Integration Techniques](#fundamental-integration-techniques)
* [Trigonometric Integration](#trigonometric-integration)
* [Trigonometric Substitution](#trigonometric-substitution)

<br>

	let f, g be some functions of x
	let c be some constant


Fundamental Integration Techniques
----------------------------------------

	S(f)dx = ... + C
	S(f')dx = f

	S(1)dx = Sdx = x

	S(cf)dx = cS(f)dx
	S(c)dx = cS(1)dx
	S(f + g)dx = S(f)dx + S(g)dx

	S(x^c)dx = (1/(c+1))x^[c+1]  when  c != -1
	S(1/x)dx = ln|x|

Substitution

	Sfdx = Sf(dx/dg)dg

	S[a]^b fdx = S[A]^B f(dx/dg)dg
	where g = A when x = a and g = B when x = b

Integration by Parts

	S(fg')dx = fg - S(f'g)dx
	or
	S(u)dv = uv - S(v)du


Trigonometric Integration
----------------------------------------

Refactor trigonometric equations into a form
where substitution can be used on them to solve the integral.

	TODO


Trigonometric Substitution
----------------------------------------

	TODO

