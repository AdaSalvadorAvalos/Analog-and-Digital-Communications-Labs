%Ada Salvador Ávalos
%Pràctica 0

%He posat pause a cada gràfica
% Pause in every graph
%ex1
N1= 15;

x1=zeros(1,N1);

%ex2
N2= 15;
x2=ones(1,N2);

%ex3
x3=rand();

%ex4
x4=rand()*10;

%ex5
x5=rand()*-10+rand()*10;

%ex6
N6=15;
v6=rand(1,N6);
x6=v6(13);

%ex7
figure;
pause;
%ex8
figure; stem (v6);

pause;
%ex9
x9= 2+3*i;
x91=abs(x9);
x92=angle(x9);
x93=angle(x9)*180/pi;

%ex10
N10=N6;
x10=power(v6,2);



%ex11
N11=1024;
fx=100;
fs=900;
Ts=1/fs;
temps=Ts*[0:(N11-1)];
x11=cos(2*pi*fx*temps);
plot(x11);

pause;
%ex12
Npoints=1024;
x12=fft(x11,Npoints);
plot(x12);
pause;
%ex14

figure;


subplot(2,1,1); plot(x11);
subplot(2,1,2); plot(abs(x12));

pause;
%ex15 

fx1=200;
x15=cos(2*pi*fx1*temps);


subplot(3,1,1); plot(x11);
subplot(3,1,3); plot(x15);
subplot(3,1,2); plot(abs(x12));

pause;
%ex16
N16=1000;
  
x16=rand(1,N16);

mu=mean(x16);
sigma=var(x16);

%ex18
N18=2048;
M18=8;
a18=rand(M18,N18);

x18=normpdf(a18,0,1);

%ex19
for c= 1:M18
    
    subplot(2,4,c); plot(x18);

end
pause;

%ex20
N20=100;
x20=1:+2:N20;

%ex21
N21=100;
x21=1:5:N21;

%ex22
L=10;
p=1:L;
x22=conv(p,p);
figure; stem(x22);



