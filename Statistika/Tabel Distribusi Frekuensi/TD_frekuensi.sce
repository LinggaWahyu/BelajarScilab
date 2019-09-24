function[interval,m,r,f,fr,fk]=TD_frekuensi(x,k)
x_min = min(x);
x_max = max(x);
r = x_max-x_min;
i = ceil((r/k) + 0.00000001);

for q = 1 : k + 1
    interval(q) = x_min + (q-1) * i;
end

for q = 1 : k
    m(q) = interval(q) + 0.5 * i;
    f(q) = 0;
end

for p = 1 : n
    for q = 1 : k 
        if x(p) >= interval (q) & x(p) < interval (q + 1)
            f(q) = f(q) + 1;
        end
    end
end

for q = 1 : k
    fr(q) = f(q)/n;
end

fk(1) = f(1);
for q = 2 : k
    fk(q) = fk(q-1) + f(q);
end

endfunction
