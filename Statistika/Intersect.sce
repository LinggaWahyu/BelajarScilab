function[ANB]=Interseksi(A,B,S)
P_A = size(A) / size(S)
P_B = size(B) / size(S)

ANB = union(A,B)
endfunction
