%4.1.1
%1
t=linspace(-10,+10,10^4);

%2
rs=1;
B=0.2;

p=(sin(pi.*rs.*t.*(1-B))+ 4.*B.*rs.*t.*cos(pi.*rs.*t.*(1+B)))./(pi.*t.*sqrt(rs).*(1-(4.*B.*rs.*t).^2));
Bp=(1/2)*(rs*(1+B));
figure;
plot(p);

%3
is=1*p;
qs=(-1)*p;
figure;
subplot(2,1,1);plot(is);
subplot(2,1,2);plot(qs);
%5
fc=100;
[ s ] = modIQ( is, qs, fc, t );
Bs=2*Bp;
%4.1.2
%6
r=s;
Bh=Bp;
h=2*Bh*sinc(2*Bh*t);
%8
[ yi, yq ] = dmodIQ( r, fc, h, t );

figure;
plot(yi);
hold on
plot(yq);
plot(is);
plot(qs);
hold off
%9
%S� ,ja que analitza per separat la senyal �til y amb soroll de yi i yq
%i fa les operacions corresponents
%Yes, since it separately analyzes the useful signal and with noise of yi and yq
%and performs the corresponding operations

%4.2
%11
Pw=10;  
 [yi,yq] = noisydmodIQ(r,fc,h,t,Pw);
 
 figure;
plot(yi);
hold on
plot(yq);
plot(is);
plot(qs);
hold off

yiadaptat0=conv(yi,p);
%se tiene que hacer antes de a�adir ruido
yiadaptat = yiadaptat0/max(abs(yiadaptat0));
yqadaptat=conv(yq,p);
 figure;
plot(yiadaptat);
 figure;
plot(yqadaptat);
Nss=10;
mosyiadaptat=yiadaptat(Nss:Nss:end);
mosyqadaptat=yqadaptat(Nss:Nss:end);

 figure;
plot(mosyiadaptat);
hold on
plot(mosyqadaptat);
hold off
%12
hd=p;
fltrohd1=conv(hd,yiadaptat);
fltrohd2=conv(hd,yqadaptat);
%13
Nss=10;
puntoadaptadohd1=fltrohd1(Nss:Nss:end);
puntoadaptadohd2=fltrohd2(Nss:Nss:end);


 figure;
plot(puntoadaptadohd1);
hold on
plot(puntoadaptadohd2);
hold off
%14
%diferencia1=puntoadaptadohd1 -r;
%diferencia2=puntoadaptadohd2 -r;

%4.3
%16
N=100;
[ a_BPSK ] = rndBPSK( N );
[ a_QPSK ] = rndQPSK( N );
figure;
plot(complex(a_BPSK), "o");
figure;
plot(a_QPSK, "o");
figure;
stem(a_BPSK);
figure;
stem(abs(a_QPSK));

%4.4
%17
Pw=0.1;
w_BPSK=sqrt(Pw)*randn(size(a_BPSK));

%18
w_QPSK=sqrt(Pw)*randn(size(a_QPSK))+j*sqrt(Pw)*randn(size(a_QPSK));

%19

r_BPSK=a_BPSK + w_BPSK;
r_QPSK=a_QPSK + w_QPSK;

%20
figure;
plot(complex(r_BPSK), "o");
hold on
plot(complex(a_BPSK), "o");
hold off
figure;
plot(r_QPSK, "o");
hold on
plot(a_QPSK, "o");
hold off

%21
Pw1=0.01;
w_BPSK1=sqrt(Pw1)*randn(size(a_BPSK));
w_QPSK1=sqrt(Pw1)*randn(size(a_QPSK))+j*sqrt(Pw1)*randn(size(a_QPSK));
r_BPSK1=a_BPSK + w_BPSK1;
r_QPSK1=a_QPSK + w_QPSK1;
figure;
plot(complex(r_BPSK1), "o");
hold on
plot(complex(a_BPSK), "o");
hold off
figure;
plot(r_QPSK1, "o");
hold on
plot(a_QPSK, "o");
hold off

Pw2=1;
w_BPSK2=sqrt(Pw2)*randn(size(a_BPSK));
w_QPSK2=sqrt(Pw2)*randn(size(a_QPSK))+j*sqrt(Pw2)*randn(size(a_QPSK));
r_BPSK2=a_BPSK + w_BPSK2;
r_QPSK2=a_QPSK + w_QPSK2;
figure;
plot(complex(r_BPSK2), "o");
hold on
plot(complex(a_BPSK), "o");
hold off
figure;
plot(r_QPSK2, "o");
hold on
plot(a_QPSK, "o");
hold off
