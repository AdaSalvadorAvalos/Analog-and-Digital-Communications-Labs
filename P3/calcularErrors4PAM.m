function [ ser, ber ] = calcularErrors4PAM( N, snr )
% N és la longitud vector binari transmès.
% snr és la relació senyal-a-soroll.
% ser és la probabilitat d’error de símbol calculada.
% ber és la probabilitat d’error de bit calculada.
% N is the length of the transmitted binary vector.
% snr is the signal-to-noise ratio.
% ser is the calculated symbol error probability.
% ber is the calculated bit error probability.

b=randi([0 1],1,N);
a_4PAM= mapper4PAM( b );
Pu=1;
Pw= (Pu/snr);
w=sqrt(Pw)*randn(size(a_4PAM));
a_reb_4PAM=w+a_4PAM;
detect=detector4PAM(a_reb_4PAM);

unosincorrectos=detect-b;
a1 = zeros(1,length(unosincorrectos)*0.5);
j=0;
for  i=1:2:length(unosincorrectos)
    j=j+1;
    if unosincorrectos(i)==0 && unosincorrectos(i+1)==-1
        a1(j)=1;
    elseif unosincorrectos(i)==-1 && unosincorrectos(i+1)==0
        a1(j)=1;
        elseif unosincorrectos(i)==-1 && unosincorrectos(i+1)==-1
        a1(j)=1;
     elseif unosincorrectos(i)==1 && unosincorrectos(i+1)==0
        a1(j)=1;
         elseif unosincorrectos(i)==0 && unosincorrectos(i+1)==1
        a1(j)=1;
      elseif unosincorrectos(i)==1 && unosincorrectos(i+1)==1
        a1(j)=1;
    elseif  unosincorrectos(i)==0 && unosincorrectos(i+1)==0
        a1(j)=0;
    end

end
bitsincorrectos=sum(a1);
ber=(bitsincorrectos/N);

detectsimb=mapper4PAM(detect);
restaser= (detectsimb - a_4PAM);

a2 = zeros(1,length(restaser));
j1=0;
for  i=1:length(restaser)
    j1=j1+1;
    if restaser(i)==(-6*sqrt(5))/5 || restaser(i)==(-2*sqrt(5))/5  || restaser(i)==(2*sqrt(5))/5  || restaser(i)==(-4*sqrt(5))/5 || restaser(i)==(4*sqrt(5))/5  
        a2(j1)=1;
    else
        a2(j1)=0;
 
    end

end
simbolosincorrectos=sum(a2);
ser=(simbolosincorrectos/N);
%passar a db
%ser=10*log(ser);


end