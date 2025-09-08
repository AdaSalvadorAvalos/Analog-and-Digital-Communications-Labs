function [ b ] = detector2PAM( a )
% a �s el vector de s�mbols rebut.
% b �s el vector de d�gits decidits.
% a is the vector of received symbols.
% b is the vector of decided bits.

b = zeros(1,length(a));
for i=1:length(a)
    if a(i)>0
        b(i)=0;
    else 
        b(i)=1;
    end 
 end
end