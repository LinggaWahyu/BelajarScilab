function[fx] = fungsiNormal(mu,sigma,x)
konst = 1 / (sigma * sqrt(2 * %pi))
fx = konst * exp(-0.5 * (((x-mu)/sigma)^2))
endfunction

function[P_Normal] = PNormal(mu,sigma,a,b)
n = 1000
h = (b-a) / n
fa = fungsiNormal(mu,sigma,a)
fb = fungsiNormal(mu,sigma,b)
jum = 0

for i = 1 : (n-1)
    a = a + h
    fa1n = fungsiNormal(mu,sigma,a)
    jum = jum + fa1n
end

P_Normal = (h/2) * (fa + 2 * jum + fb)

endfunction
