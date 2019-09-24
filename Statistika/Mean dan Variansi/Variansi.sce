function[variansi] = Variansi(m,f,fk)

jumlah = 0;

for p = 1 : k
    jumlah = jumlah + f(p) * (m(p)^2)
    variansi = (jumlah - fk(k) * mean^2) / (fk(k) - 1)
end
endfunction
