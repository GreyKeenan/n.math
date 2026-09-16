#import "utilities.typ": *

#import "unitCircle.typ"
#import "identities.typ"

#import "front_triangle.typ":Triangle


#let title = [
	= Trigonometric Formula Sheet
	#super[\*Please check with your instructor before using this on an exam.]
]

#let adj = text(fill:myred, $"adjacent"$)
#let opp = text(fill:myblue, $"opposite"$)
#let myreda = text(fill:myred, $a$)
#let myblueb = text(fill:myblue, $b$)


#let page = [


#grid(
	columns:(1fr, 1fr),
	//fill:gray,
	image("logo.png", height:1in, alt:"Normandale Community College, Tutoring Center"),
	align(center+horizon)[#title],
)

#let triangleSection = [
	#grid(columns:(1fr, 1fr),
		align(center+top)[
			#figure(
				alt:"
					A right triangle with sides ay, bee, see, and angles alpha, 90 degrees, theta.
				",
				block(
					width:1.3in,
					height:0.65in,
					breakable:false,
					inset:(bottom:0pt),
				)[#Triangle(0.5)]
			)

			#figure(alt:"
				Theta plus alpha equals ninety degrees.
				Area equals ay times bee over 2.
				Ay squared plus bee squared equals see squared.
			")[#abox(left)[
			$\ theta + #text(fill:gray, $alpha$) = 90^DEG
			\ "area" = (aa bb) / 2
			\ aa^2 + bb^2 = c^2
			$]]
		],
		figl(alt:"
			Ay equals adjacent equals see times cosine theta.
			Bee equals opposite equals cee times sine theta.
			Cee equals hypotenuse equals square root of ay squared plus bee squared.
			Sine theta equals opposite over hypotenuse.
			Cosine theta equals adjacent over hypotenuse.
			Tangent theta equals opposite over adjacent equals sine theta over cosine theta.
		")[#aabox(center, left)[
		$myreda = #adj = c times cos theta
		\ myblueb = #opp = c times sin theta
		\ c = "hypotenuse" = sqrt(myreda^2 + myblueb^2)
		\
		\ sin theta = #opp/"hypotenuse"
		\ cos theta = #adj/"hypotenuse"
		\ tan theta = #opp / #adj = ( sin theta )/( cos theta )
		$]],
	)
]

#grid(
	columns:(1fr, 1fr),
	//fill:gray,
	[
		#triangleSection
		#aabox(center, left)[

			#identities.pythagorean

			=== Reciprocal Functions
			#figl(alt:"
				Cosecant theta equals hypotenuse over opposite equals one over sine theta.
				Secant theta equals hypotenuse over adjacent equals one over cosine theta.
				Cotangent theta equals adjacent over opposite equals one over tangent theta.
				Inverse sine of  theta does not equal one over sine theta.
			")[
			#block( grid(
				//fill:myred,
				columns:(auto, auto),
				inset:(right:16pt),
				$csc theta = "hypotenuse"/#opp = 1/( sin theta )
				\ cot theta = #adj/#opp = 1/( tan theta )
				$,
				$sec theta = "hypotenuse"/#adj = 1/( cos theta )
				\ sin^(-1)(theta) != 1/( sin theta )
				$,
			))
			]

			=== Inverse Functions
			#figl(alt:"
				Theta equals inverse sine of opposite over hypotenuse equals arcsine of opposite over hypotenuse.
				Theta equals inverse cosine of adjacent over hypotenuse equals arccosine of adjacent over hypotenuse.
				Theta equals inverse tangent of opposite over adjacent equals arctangent of opposite over adjacent.
			")[ $theta =
			sin^(-1)(#opp/"hypotenuse") =
			arcsin(#opp/"hypotenuse")
			\ theta =
			cos^(-1)(#adj/"hypotenuse") =
			arccos(#adj/"hypotenuse")
			\ theta =
			tan^(-1)(#opp/#adj) =
			arctan(#opp/#adj)
			$]

			#let insym = $"in"$
			#figl(alt:"
				Function, Domain, Range.
				Sine theta equals why, theta is between negative infinity and infinity, why is in negative one and one.
				Cosine theta equals ex, theta is between negative infinity and infinity, ex is in negative one and one.
				Tangent theta equals em, cosine of theta does not equal zero, em is between negative infinity and infinity.
				Arcsine why equals theta, why is in negative one and one, theta is in negative pi over two and pi over two.
				Arccosine ex equals theta, ex is in negative one and one, theta is in zero and pi.
				Arctangent em equals theta, em is between negative infinity and infinity, theta is between negative pi over two and pi over two.
			")[#grid( columns:(auto, auto, auto),
				inset:4pt,
				[*Function*], [*Domain*], [*Range*],
				$sin(theta) = y$, $theta insym (-infinity, infinity)$, $y insym [-1, 1]$,
				$cos(theta) = x$, $theta insym (-infinity, infinity)$, $x insym [-1, 1]$,
				$tan(theta) = m$, $cos theta != 0$, $m insym (-infinity, infinity)$,
				$arcsin(y)=theta$, $y insym [-1,1]$, $theta insym [-pi/2, pi/2]$,
				$arccos(x)=theta$, $x insym [-1,1]$, $theta insym [0, pi]$,
				$arctan(m)=theta$, $m insym (-infinity, infinity)$, $theta insym (-pi/2, pi/2)$,
			)]

			#grid(
				columns:1,
				inset:(bottom:8pt),
				grid(
					align:left + top,
					columns:(55%, 45%),
					abox(left+horizon, identities.doubleAngle),
					abox(left+horizon, identities.halfAngle),
				),
				align(left)[
					=== Power Reduction Formulas
					#figl(alt:"
						Sine squared theta equals one half of one minue cosine two theta.
						Cosine squared theta equals one half of one plus cosine two theta.
						Tangent squared theta equals one minus cosine two theta over one plus cosine two theta.
						Sine theta cosine theta equals one half sine two theta.
					")[#grid(
						columns:(1fr, 1fr),
						/*
						abox(left+horizon, $cos^2(theta) = 1/2(1 + cos(2theta))$),
						abox(left+horizon, $sin^2(theta) = 1/2(1 - cos(2theta))$),
						abox(left+horizon, $tan^2(theta) = (1 - cos(2theta)) / (1 + cos(2theta))$),
						abox(left+horizon, $sin theta cos theta = 1/2 sin(2theta)$),
						*/
						align:left+top,
						abox(left+bottom,
							$sin^2(theta) = 1/2(1 - cos(2theta))
							\ tan^2(theta) = (1 - cos(2theta)) / (1 + cos(2theta))
							$
						),
						abox(left+bottom,
							$cos^2(theta) = 1/2(1 + cos(2theta))
							\ sin theta cos theta = 1/2 sin(2theta)
							$
						),
					)]
				]
			)

		]
	],
	[
		#figure(
			alt:"The Unit Circle.
			When travelling around a circle with radius of one,
			the coordinates are given by ex equals cosine of theta and why equals sine of theta.
			"
		)[ #align(center)[#unitCircle.main] ]

		#let pattern = $"pattern": sqrt(0)/2, sqrt(1)/2, sqrt(2)/2, sqrt(3)/2, sqrt(4)/2$
		#figure(pattern, alt:"pattern: root zero over two, root one over two, root two over two, root three over two, root four over two.")

		#let bsin = text(fill:myblue)[$sin$]
		#let rcos = text(fill:myred)[$cos$]
		#align(center, grid(columns:(1fr, 1fr), rows:(5em, 5em), //fill:gray,
			figure(alt:"
				Radians equal degrees times pi over 180.
				Theta plus or minus two pi is an equivalent angle.
			")[#align(center+horizon, block(align(left,
				//$/*"pattern": */sqrt(0)/2, sqrt(1)/2, sqrt(2)/2, sqrt(3)/2, sqrt(4)/2
				$"rad"="deg" times pi/180^DEG
				\ theta plus.minus 2pi = theta$)
			))],
			figure(alt:"
				Sine of negative theta equals negative sine theta.
				Cosine of negative theta equals cosine theta.
				Tangent of negative theta equals negative tangent theta.
			")[#align(center+horizon, block(align(left,
				$bsin(-theta) = -bsin theta
				\ rcos(-theta) = rcos theta
				\ tan(-theta) = -tan theta$)
			))],
			figure(alt:"
				Sine of theta plus or minus pi equals negative sine theta.
				Cosine of theta plus or minus pi equals negative cosine theta.
				Tangent of theta plus or minus pi equals tangent theta.
			")[#align(center+horizon, block(align(left,
				$bsin(theta plus.minus pi) = -bsin theta
				\ rcos(theta plus.minus pi) = -rcos theta
				\ tan(theta plus.minus pi) = tan theta$)
			))],
			figure(alt:"
				Sine of pi over two minus theta equals cosine theta.
				Cosine of pi over two minus theta equals sine theta.
				Tangent of pi over two minus theta equals cotangent theta.
			")[#align(center+horizon, block(align(left,
				$bsin(pi/2 - theta) = rcos theta
				\ rcos(pi/2 - theta) = bsin theta
				\ tan(pi/2 - theta) = cot theta$)
			))],
		))

		#aabox(center, left)[
			#identities.sum
			#identities.productToSum
			#identities.sumToProduct
		]

	]
)

]
