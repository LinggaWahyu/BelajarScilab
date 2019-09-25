function[P_BigA]=TeoremaBayes(B,A,i,S)

[m,n] = size(B);
P_A = 0;

for j = 1 : n
    P_B(j) = B(j) / S
    if  P_B <> 0 then
        P_AB(j) = intersect(A,B(j)) / S
        P_AgB(j) = P_AB(j) / P_B(j)
    end
    P_A = P_A + P_B(j) * P_AgB(j)

    P_BigA = (P_B(i) * P_AgB(i) / P_A)
end

endfunction
