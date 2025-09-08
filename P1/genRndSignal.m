function [ n, x1 ] = genRndSignal( N, B, K )
% N �s el nombre de mostres.
% B �s el par�metre que controla l�ample de banda.
% K �s el nombre de sinusoides superposades.
% n �s el vector columna 1,2,...,N.
% x �s un vector columna de N mostres.
% --------------
% N is the number of samples.
% B is the parameter that controls the bandwidth.
% K is the number of superimposed sinusoids.
% n is the column vector 1,2,...,N.
% x is a column vector of N samples.

x1=zeros(1,N);
 n=0:(N-1);
for c=1:K
    
angl=2*pi*rand(1);
fx=B*rand(1);
Ak=rand(1);

x1=x1+(Ak*cos(2*pi*fx*n+angl));

end

end