 syms Tstar(t) V1(t) VN(t) k T delta c N
 eq3 = diff(Tstar) == (k*V1*T) - (delta*Tstar)
 eq4 = diff(V1) == -c*V1
 eq5 = diff(VN) == (N*delta*Tstar) - (c*VN)
 eqs2 = [eq3 eq4 eq5]
 [Tstar, V1, VN] = dsolve(eqs2)