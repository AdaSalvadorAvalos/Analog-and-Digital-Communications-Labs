function [ a2 ] = mapper4PAM( b2 )
a2 =zeros(1,4);
j=0;
for i=1:2:length(b2)
    j=j+1;
    if  b2(i:i+1)==[0 0]
        a2(j)=(-((3)/sqrt(5)));
    elseif b2(i:i+1)==[0 1]
        a2(j)=(-((1)/sqrt(5)));
    elseif b2(i:i+1)==[1 1]
       a2(j)=(((1)/sqrt(5)));
    elseif  b2(i:i+1)==[1 0]
        a2(j)=(((3)/sqrt(5)));
    end
end
end