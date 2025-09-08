function [ ser, ber ] = calcularErrors2PAM( N, snr )
% N �s la longitud vector binari transm�s.
% snr �s la relaci� senyal-a-soroll.
% ser �s la probabilitat d�error de s�mbol calculada.
% ber �s la probabilitat d�error de bit calculada.
% N is the length of the transmitted binary vector.
% snr is the signal-to-noise ratio.
% ser is the calculated symbol error probability.
% ber is the calculated bit error probability.
b=randi([0 1],1,N);
a_2PAM= mapper2PAM( b );
Pu=1;
Pw= (Pu/snr);
w=sqrt(Pw)*randn(size(a_2PAM));
a_reb_2PAM=w+a_2PAM;
detect=detector2PAM(a_reb_2PAM);

unosincorrectos=detect-b;
bitsincorrectos=sum(abs(unosincorrectos));
ber=(bitsincorrectos/N);

detectsimb=mapper2PAM(detect);
restaser= (detectsimb - a_2PAM)/2;
simbolosincorrectos=sum(abs(restaser));
ser=(simbolosincorrectos/N);
%passar a db
%ser=10*log(ser);


end