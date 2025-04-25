import Pkg
Pkg.activate(".")

using FastGaussQuadrature, LinearAlgebra

x, w = gausslegendre(3)

f(x) = x^4

I = dot(w, f.(x))

prynt(I)