#import "utilities.typ":*


#let LS = $integral$// #h(-0.0em)$
#let rt = text(fill:red, $theta$)
#let bp = text(fill:blue, $phi$)

#let PC = text(fill:gray)[$+ C$]

#let derivatives = $sin'(x) = cos(x)
	\ cos'(x) = -sin(x)
	\ tan'(x) = sec^2(x)
	\ sec'(x) = sec(x)tan(x)
	\ cot'(x) = -csc^2(x)
	\ csc'(x) = -csc(x)cos(x)
$
#let arcderivatives = $arcsin'(x) = 1/sqrt(1 - x^2)
	\ arctan'(x) = 1/(1 + x^2)
	\ "arcsec"'(x) = 1/( |x| sqrt(x^2 - 1))
	\ arccos'(x) = -arcsin'(x) //-1/sqrt( 1 - x^2 )
	\ "arccot"'(x) = -arctan'(x)
	\ "arccsc"'(x) = -"arcsec"'(x)
$
#let ss = $space.nobreak$
#let allderivatives = [
	=== Derivatives
	#figl(alt:"
		sine prime ex equals cosine ex.
		Cosine prime ex equals negative sine ex.
		Tangent prime ex equals secant squared ex.
		Cotangent prime ex equals negative cosecant squared ex.
		Secant prime ex equals secant ex tangent ex.
		Cosecant ex equals negative cosecant ex cosine ex.
		Arcsine prime ex equals one over the square root of one minus ex squared equals negative arccosine prime ex.
		Arctangent prime ex equals one over one plus ex squared equals negative arccotangent prime ex.
		Arcsecant prime ex equals one over absolute ex times the square root of ex squared minus one equals negative arccosecant prime ex.
	")[ $sin'(x) = cos x #h(2.2em) cos'(x) = -sin x 
	\ tan'(x) = sec^2(x) #h(1em) cot'(x) = -csc^2(x)
	\ sec'(x) = sec(x)tan(x)
	\ csc'(x) = -csc(x)cos(x)
	\ arcsin'(x) = 1/sqrt(1 - x^2) = -arccos'(x)
	\ arctan'(x) = 1/(1 + x^2) = -"arccot"'(x)
	\ "arcsec"'(x) = 1/( |x| sqrt(x^2 - 1)) = -"arccsc"'(x)
	//\ arccos'(x) = -arcsin'(x) //-1/sqrt( 1 - x^2 )
	//\ "arccot"'(x) = -arctan'(x)
	//\ "arccsc"'(x) = -"arcsec"'(x)
	$]
]

#let antiderivatives = [
	=== Antiderivatives
	#figl(alt:"
		The integral of sine ex dee ex equals negative cosine ex plus see.
		The integral of cosine ex dee ex equals sine ex plus see.
		The integral of tangent ex dee ex equals natural log of absolute secant ex plus see.
		The integral of secant ex dee ex equals natural log of absolute secant ex plus tan ex plus see.
		The integral of cotangent ex dee ex equals negative natural log of absolute cosecant ex plus see.
		The integral of cosecant ex dee ex equals negative natural log of cosecant ex plus cotangent ex plus see.
	")[ $LS sin(x) d x = -cos x PC
	\ LS cos(x) d x = sin x PC
	\ LS tan(x) d x = ln|sec x| PC
	\ LS sec(x) d x = ln|sec x + tan x| PC
	\ LS cot(x) d x = -ln|csc x| PC
	\ LS csc(x) d x = -ln|csc x + cot x| PC
	$]
]

#let hyperbolic = [
	=== Hyperbolic Trig
	#figl(alt:"
		Hyperbolic sine ex equals one half ee to the ex minus ee to the negative ex.
		Hyperbolic cosine ex equals one half ee to the ex plus ee to the negative ex.
		Hyperbolic tangent ex equals hyperbolic sine ex over hyperbolic cosine ex.
		Hyperbolic sine squared ex plus hyperbolic cosine squared ex equals one.
		Hyperbolic sine prime ex equals hyperbolic cosine ex.
		Hyperolic cosine prime ex equals hyperbolic sine ex.
	")[ $sinh(x) = 1/2(e^x - e^(-x))
	\ cosh(x) = 1/2(e^x + e^(-x))
	\ tanh(x) = sinh(x)/cosh(x)
	\ sinh^2(x) + cosh^2(x) = 1
	\ sinh'(x) = cosh(x)
	\ cosh'(x) = sinh(x)
	$]
]

#let try = $"try"$
#let substitutions = [
	=== Trig Substitutions
	#figl(alt:"
		The square root of ay plus ex squared, try ex equals root ay times tangent theta.
		The square root of ay minux ex squared, try ex equals root ay times sine theta.
		The square root of ex squared minus ay, try ex equals root ay times secant theta.
	")[ $sqrt(a + x^2) -> try x = sqrt(a) tan theta
	\ sqrt(a - x^2) -> try x = sqrt(a) sin theta
	\ sqrt(x^2 - a) -> try x = sqrt(a) sec theta
	$]
	//\ \*valid over the range of \ the inverse function
]

#let taylor_sin = $sin x = limits(sum)_(k = 0)^infinity ( (-1)^k x^(2k + 1) )/( (2k + 1)! )$
#let taylor_cos = $cos x = limits(sum)_(k = 0)^infinity ( (-1)^k x^(2k) )/( (2k)! )$


#let taylors = [
	=== Taylor Series
	#figl(alt:"
		Sine ex equals the sum as kay goes from zero to infinity of negative one to the kay times ex to the two kay plus one over two kay plus one fatorial.
		Cosine ex equals the sum as kay goes from zero to infinity of negative one to the kay times ex to the two kay over two kay factorial.
	")[
	$#taylor_sin
	\ #taylor_cos
	$]
]

#let cylindrical = [
	=== Cylindrical Coordinates
	#figl(alt:"
		Ex equals are cosine theta.
		Why equals are sine theta.
		Zee equals zee.
		Dee ex dee why dee zee equals are dee are dee theta dee zee.
	")[ $x = r cos rt
	\ y = r sin rt
	\ z = z
	\ d x d y d z = (r) d r d rt d z
	$]
]

#let spherical = [
	=== Spherical Coordinates
	#figl(alt:"
		Ex equals rho cosine theta sine phi.
		Why equals rho sine theta sine phi.
		Zee equals rho cosine phi.
		Dee ex dee why dee zee equals rho squared sine phi dee are dee theta dee phi.
	")[ $x = rho cos(rt)sin(bp)
	\ y = rho sin(rt)sin(bp)
	\ z = rho cos bp
	\ d x d y d z = (rho^2 sin bp) d r d rt d bp
	$]
]

#let multiplied = [
	=== Specific Trig Integrals

	#figl(alt:"
		The integral of sine to the em theta cosine to the en theta dee theta.
		If em is odd, convert to negative integral of a function of cosine theta times negative sine theta dee theta.
		If en is odd, convert to the integral of a function of sine theta times cosine theta dee theta.
		Otherwise use power reductions or integrate by parts.
	")[ $LS sin^m (theta) cos^n (theta) d theta :
	\ m "odd" -> -LS f(cos theta)(-sin theta)d theta
	\ n "odd" -> LS f(sin theta)cos(theta)d theta
	\ "otherwise use power reductions
	or integrate by parts"
	$]

	#figl(alt:"
		The integral of tangent to the em theta secant to the en theta dee theta.
		If em is odd, convert to the integral of a function of secant theta times tangent theta secant theta dee theta.
		If en is even, convert to the integral of a function of tangent theta times secant squared theta dee theta.
		Applies with cotangent and cosecant too.
	")[ $LS tan^m (theta) sec^n (theta) d theta :
	\ m "odd" -> LS f(sec theta)tan(theta)sec(theta)d theta
	\ n "even" -> LS f(tan theta)sec^2 (theta) d theta
	\ "(applies with cot & csc too)"
	$]
	
]


#let reductions = [
	=== Integral Power Reductions

	$LS sin^n (x)d x = (-sin^(n - 1)(x)cos x )/n + (n - 1)/n LS sin^(n - 2)(x)d x
	\ LS cos^n (x)d x = (cos^(n - 1)(x)sin x )/n + (n - 1)/n LS cos^(n - 2)(x)d x
	\ LS tan^n (x)d x = (tan^(n - 1)(x))/(n - 1) - LS tan^(n - 2)(x)d x
	\ LS cot^n (x)d x = (-cot^(n - 1)(x))/(n - 1) - LS cot^(n - 2)(x)d x
	\ LS sec^n (x)d x = (sec^(n - 2)(x)tan x)/(n-1) + (n-2)/(n-1) LS sec^(n - 2)(x)d x
	\ LS csc^n (x)d x = (-csc^(n - 2)(x)cot x)/(n-1) + (n-2)/(n-1) LS csc^(n - 2)(x)d x
	$
]
