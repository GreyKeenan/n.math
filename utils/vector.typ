
#let o = (0, 0, 0)
#let i = (1, 0, 0)
#let j = (0, 1, 0)
#let k = (0, 0, 1)
#let x = i
#let y = j
#let z = k

#let at(v, i) = v.at(i, default:0)

#let scale(v, s) = ( s*v.at(0), s*v.at(1), s*v.at(2) )


#let dot(u,v) = u.zip(v).map(pair => pair.product( default:0 )).sum()
#let cross(v,u) = {
	//if (v.len() == 7 and u.len() == 7) {
		//panic("I don't know the 7d cross product yet.")
	//}
	return (
		v.at(1, default:0)*u.at(2, default:0) - v.at(2, default:0)*u.at(1, default:0),
		v.at(2, default:0)*u.at(0, default:0) - v.at(0, default:0)*u.at(2, default:0),
		v.at(0, default:0)*u.at(1, default:0) - u.at(0, default:0)*v.at(1, default:0),
	)
}

#let mag(v) = calc.sqrt(v.map(i => i*i).sum())
#let scale(v,s) = v.map(i => i*s)
#let normalize(v) = scale(v, 1/mag(v))

#let add(u,v) = u.zip(v).map(pair => pair.sum(default:0))
#let subtract(u,v) = add(u, scale(v, -1))

#let multiply(u,v) = u.zip(v).map( pair => pair.product(default:0) )
#let reciprocal(v) = v.map(i => 1/i)
#let divide(u,v) = multiply(u, reciprocal(v))


