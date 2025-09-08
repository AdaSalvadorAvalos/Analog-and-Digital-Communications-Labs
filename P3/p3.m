%Ada Salvador �valos
%ap�ndix
b=randi([0 1],1,80);
a_2PAM= mapper2PAM( b );
Pw= 0.01;
w=sqrt(Pw)*randn(size(a_2PAM));
wmitjana=mean(w);
wvarianca=var(w);
a_reb_2PAM=w+a_2PAM;

b1=randi([0 1],1,80);
a_4PAM= mapper4PAM( b1 );
w1=sqrt(Pw)*randn(size(a_4PAM));
wmitjana1=mean(w1);
wvarianca1=var(w1);
a_reb_4PAM=w1+a_4PAM;

%3.1.2
b_est_2PAM=detector2PAM(a_reb_2PAM);

%3.1.3
%He pogut visualitzar que coincideixen els valors de b i de b_est_2PAM
% I could see that the values of b and b_est_2PAM match

%3.1.4
Pw1= 0;
w2=sqrt(Pw1)*randn(size(a_2PAM));
a_reb_2PAMpw1=w2+a_2PAM;

b_est_2PAMpw1=detector2PAM(a_reb_2PAMpw1);

Pw2= 0.50;
w3=sqrt(Pw2)*randn(size(a_2PAM));
a_reb_2PAMpw2=w3+a_2PAM;

b_est_2PAMpw2=detector2PAM(a_reb_2PAMpw2);

%3.2.6
b_est_4PAM=detector4PAM(a_reb_4PAM);

%3.2.8
%Utilitzaria una 2-PAM ya que te menys bits, per tant ocupa menys
% I would use a 2-PAM since it has fewer bits, therefore it takes up less space

%3.3.12
snr=8;
Nd=100000;
[ ser, ber ] = calcularErrors2PAM( Nd, snr );
figure;
subplot(2,1,1);plot(ser);
subplot(2,1,2);plot(ber);

%3.3.13
 snr=1;
for i=1:10
[ ser, ber ] = calcularErrors2PAM( Nd, snr );

snr=snr+1;
end
figure;
subplot(2,1,1);plot(ser);
subplot(2,1,2);plot(ber);


%3.3.14
ber2=qfunc(sqrt((10*log(snr))));
ser2=ber2;
figure;
subplot(2,1,1);plot(log(ser2));
subplot(2,1,2);plot(log(ber2));

%3.3.15
%------------------------15.12-------------------------------
snr2=8;
Nd2=100000;
[ ser, ber ] = calcularErrors4PAM( Nd2, snr2 );
figure;
subplot(2,1,1);plot(ser);
subplot(2,1,2);plot(ber);

%------------------------15.13-------------------------------
 snr2=1;
for i=1:10
[ ser, ber ] = calcularErrors4PAM( Nd2, snr2 );

snr2=snr2+1;
end
figure;
subplot(2,1,1);plot(ser);
subplot(2,1,2);plot(ber);


%------------------------15.14-------------------------------
ber3=3/2*qfunc(sqrt((3*(10*log(snr2)))/15));
ser3=2*ber3;
figure;
subplot(2,1,1);plot(log(ser3));
subplot(2,1,2);plot(log(ber3));



