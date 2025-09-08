%ex1.1
N=200;
B=0.1;
K=4;

[n,x1]=genRndSignal( N, B, K );
figure; subplot(2,1,2); plot(x1);
transx=abs(fft(x1));

subplot(2,1,1); plot(transx);


%ex1.2

b=analogToDigital(x1 );

%ex1.3
%1.3.6 no se hace
%1.3.7
M=2.^b;
%1.3.9
b1=[0 1 1 0];
[ a1 ] = mapper2PAM( b1 );

b2=[0 0 0 1 1 1 1 0];
[ a2 ] = mapper4PAM( b2 );


%1.3.10
a_2PAM= mapper2PAM( b );
[ a_4PAM ] = mapper4PAM( b );

figure; stem(a_2PAM);
figure; stem(a_4PAM);

%1.3.11
%Perquè necessita menys informació per tant es més eficient
% Because it needs less information so it is more efficient

%1.3.12
%la detecció dels simbols 2-PAM ja que el receptor haurà de fer més
%operacions per tal de saber quina seqüència binaria es. En concret el
%doble que 4-PAM.
% the detection of 2-PAM symbols since the receiver will have to do more
% operations in order to know which binary sequence it is. Specifically the
% double that 4-PAM.

%1.4
%1.4.14
L=4;
p=ones(1,L);
Nss=4;
%Ep=int(p,-inf,inf);

 [ s_2PAM ] = modula( a_2PAM, p, Nss );
 [ s_4PAM ] = modula( a_4PAM, p, Nss );
 
 itrans2PAM=fft(s_2PAM);
figure; subplot(2,1,1); plot(abs(itrans2PAM));
 subplot(2,1,2); plot(abs(s_2PAM));


itrans4PAM=fft(s_4PAM);
figure; subplot(2,1,1); plot(abs(itrans4PAM));
subplot(2,1,2); plot(abs(s_4PAM));
