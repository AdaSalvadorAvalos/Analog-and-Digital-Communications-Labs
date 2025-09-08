function [ s ] = modula( a1, p, Nss )
% a és el vector de símbols.
% p és el vector que conté les mostres del pols.
% Nss és el nombre de mostres per símbol.
% --------------
% a is the vector of symbols.
% p is the vector that contains the pulse samples.
% Nss is the number of samples per symbol.

s=zeros();
at=upsample(p,Nss);
s=conv(at,p);
end