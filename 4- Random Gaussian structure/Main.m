clear; close all
S=[100,100,100];
A=rand(S);
A=imgaussfilt3(A,2,'Padding','replicate');
Poro=0.22; %desired porosity
Q=quantile(A(:),Poro);
A=A>Q;
surf(A)
sps(A)