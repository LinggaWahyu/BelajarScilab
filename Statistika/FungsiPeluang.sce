function [fx] = FungsiD(x)
M = sum(x);
[m, n] = size(x);

    for i = 1 : n
        fx(i) = (x(i)) / M
    end

endfunction
