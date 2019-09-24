function[mean] = Mean(m,f,fk)

jumlah = 0;
 
for i = 1 : k
   jumlah = jumlah + m(i) * f(i)
   mean = jumlah / fk(k)  
end
endfunction
