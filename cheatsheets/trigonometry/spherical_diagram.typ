#import "utilities.typ":*

#let rt = text(fill:red, $theta$)
#let bp = text(fill:blue, $phi$)

// camera
#let N = (-3, -1, -1)
// N is the POV plane
// Assumed to always be in the triple negative octant.
#let Ni = unit( cross(N, (0, 0, 1)) )
#if (Ni.at(0) > 0) { Ni = scale(Ni, -1) } // x axis on right or left
#let Nj = unit( cross(Ni, N) ) // ensures z points up
#if (Nj.at(2) < 0) { Nj = scale(Nj, -1) }
#let flatten(v) = {
	let r = project(v, N)
	return ( dot(r, Ni), dot(r, Nj) )
}

#let i_N = flatten((1,0,0))
#let j_N = flatten((0,1,0))
#let k_N = flatten((0,0,1))


#let R = 1

#let tdeg = 55
#let pdeg = 40

#let t = tdeg * calc.pi/180
#let p = pdeg * calc.pi/180

#let r = R * calc.sin(p)

#let x = R*calc.cos(t)*calc.sin(p)
#let y = R*calc.sin(t)*calc.sin(p)
#let z = R*calc.cos(p)

#let v = (x, y, z)

#let v_N = flatten(v)


#let u(t) = (r*calc.cos(t), r*calc.sin(t), 0)
//#let u(t) = scale( (calc.cos(t), r*calc.sin(t), 0), r)
#let u_N(t) = flatten(u(t))

#let n = cross(v, (0, 0, 1))
#let w(t) = (0, r*calc.sin(t), r*calc.cos(t))
#let w_proj(t) = project(w(t),n)
#let w_N(t) = flatten(w_proj(t))




//#let print2(v) = [(#v.at(0), #v.at(1))]
//#let print3(v) = [(#v.at(0), #v.at(1), #v.at(2))]



// ===========

#let s = 60%

// where origin is placed
#let cx = 30%
#let cy = 73%

#let draw(p, start:(0, 0), stroke:black) = place(line(
	start:(start.at(0)*s + cx, cy - start.at(1)*s),
	end:(cx + p.at(0)*s, cy - p.at(1)*s),
	stroke:stroke
))
#let label(p, l, offset:(-0.25em, 0.5em)) = place(
	dx: cx + p.at(0)*s + offset.at(0),
	dy: cy - p.at(1)*s - offset.at(1),
	l,
)
#let pt(p, r:2pt, fill:black) = place(
	dx: cx + p.at(0)*s - r,
	dy: cy - p.at(1)*s - r,
	circle(radius:r, fill:fill)
)


#let main = square(size:100pt, stroke:none)[

	// axes
	#draw(i_N, stroke:gray)
	#draw(j_N, stroke:gray)
	#draw(k_N, stroke:gray)
	#let ll = 1.1
	#label(
		flatten((ll*1.2, 0, 0)),
		$x$,
	)
	#label(
		flatten((0, ll, 0)),
		$y$,
	)
	#label(
		flatten((0, 0, ll)),
		$z$,
	)


	// straight lines
	#draw(
		v_N,
		start:flatten((x,y,0)),
		stroke:(paint:gray, thickness:0.5pt, dash:"dashed")
	)
	#draw(
		flatten((x,y,0)),
		stroke:(paint:gray, thickness:0.5pt, dash:"dashed")
	)

	// rho line
	#draw(v_N, stroke:black)
	#label(
		flatten( (x/2, y/2, z/2) ),
		$rho$,
		offset:(0em, 0em),
	)

	// point
	#pt(v_N)
	#let ll = 1.3*R
	#label(
		flatten( (R*calc.cos(t)*calc.sin(p), R*calc.sin(t)*calc.sin(p), R*calc.cos(p)) ),
		$( rho, rt, bp )$,
		offset:(0em, 1em),
	)

	#{ //draw the angle arcs
		let i = 0
		while i <= tdeg {
			i += 1
			draw(
				u_N(i * calc.pi/180),
				start: u_N( (i - 1) * calc.pi/180 ),
				stroke:(paint:red, thickness:0.5pt),
			)
		}

		i = 0
		while i <= pdeg {
			i += 1
			draw(
				w_N(i * calc.pi/180),
				start: w_N( (i - 1) * calc.pi/180 ),
				stroke:(paint:blue, thickness:0.5pt),
			)
		}
	}

	// arc labels
	#let ll = 1.3*r
	#let pv = (ll*calc.cos(t)*calc.sin(p/2), ll*calc.sin(t)*calc.sin(p/2), ll*calc.cos(p/2))
	#let ll = 1.7*r
	#let tv = (ll*calc.cos(t/2), ll*calc.sin(t/2), 0)
	#label( flatten(pv), text(fill:blue, $phi$) )
	#label( flatten(tv), text(fill:red, $theta$) )

]
