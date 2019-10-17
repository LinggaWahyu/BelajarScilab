function[fz]=fNormalStandar(z)
konst = 1 / sqrt(2 * %pi)
fz = konst * exp(-0.5 * (z^2))
endfunction

function[P_NormalS] = PNormalStandar(z1,z2)
n = 1000
h = (z2-z1) / n
fa = fNormalStandar(z1)
fb = fNormalStandar(z2)
jum = 0

for i = 1 : (n-1)
    z1 = z1 + h
    fz1n = fNormalStandar(z1)
    jum = jum + fz1n   
end

P_NormalS = (h/2) * (fa + 2 * jum + fb)

endfunction 

function[Pab] = P_aXb(mu,sigma,a,b)
z1 = (a-mu) / sigma
z2 = (b-mu) / sigma
Pab = PNormalStandar(z1,z2)
endfunction

function[Pc] = P_Xc(mu,sigma,c)
z = (c-mu) / sigma
Pc = PNormalStandar(-4,z)
endfunction

function[Pd] = P_dX(mu,sigma,d)
z = (d-mu) / sigma
Pd = 1 - PNormalStandar(-4,z)
endfunction
