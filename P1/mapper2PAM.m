function [ a1 ] = mapper2PAM( b1 )
a1 = zeros(1,length(b1));
for  i=1:length(b1)
    if b1(i)==1 
        a1(i)=(-1);
    elseif b1(i)==0 
        a1(i)=(1);
    end
end
end