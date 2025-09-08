function [ b ] = detector4PAM( a )
b =zeros(1,2*length(a));
j=1;
for i=1:length(a)
    if  a(i)<=(-((2)/sqrt(5))) 
        b(j)=0;
        b(j+1)=0;
    elseif (-((2)/sqrt(5)))<= a(i) && a(i)<=0
         b(j)=0;
        b(j+1)=1;
    elseif 0<= a(i)  && a(i)<=((2)/sqrt(5))
         b(j)=1;
        b(j+1)=1;
    elseif ((2)/sqrt(5))<=a(i)
         b(j)=1;
        b(j+1)=0;
    end
       j=j+2;
end
end