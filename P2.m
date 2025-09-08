%Ada Salvador Avalos
%2.1
b=repmat([0 0 0 1 1 1 1 0], 1, 10);
a_2PAM=repmat([+1 +1 +1 -1 -1 -1 -1 +1], 1, 10);
a_4PAM=repmat([-3 -1 +1 +3], 1, 10);
s_2PAM=0.5*[reshape( repmat(a_2PAM, 4, 1), [], 1 )' zeros(1, 3)];
s_4PAM=0.5*[reshape( repmat(a_4PAM, 4, 1), [], 1 )' zeros(1, 3)];

 
 %2.2
%2
Pw= 0.01;
w=Pw*rand(size(s_2PAM));
wmitjana=mean(w);
wvarianca=var(w);
%3
r_2PAM=w+s_2PAM;
figure; subplot(1,2,1); plot(s_2PAM);
ylim([-1, 1]);
 subplot(1,2,2); plot((r_2PAM));
 legend('si');
 ylim([-1, 1]);

 %4
 Pw1= 0;
w1=Pw1*rand(size(s_2PAM));
wmitjana1=mean(w1);
wvarianca1=var(w1);

r21_PAM=w1+s_2PAM;
figure; subplot(1,2,1); plot(s_2PAM);
ylim([-1, 1]);
 subplot(1,2,2); plot((r21_PAM));
 ylim([-1, 1]);

  
 Pw2= 0.5;
w2=Pw2*rand(size(s_2PAM));
wmitjana2=mean(w2);
wvarianca2=var(w2);

r22_PAM=w2+s_2PAM;
figure; subplot(1,2,1); plot(s_2PAM);
ylim([-1, 1]);
 subplot(1,2,2); plot((r22_PAM));
 ylim([-1, 1]);
 
 
%2.3
%5
Nss=4;
p=ones(1,Nss);
h=0.5*p;
r_fil_2PAM=conv(r_2PAM,h);
%6
a_reb_2PAM=r_fil_2PAM(Nss:Nss:end);
%7
figure; 
stem(a_reb_2PAM,'blue');
hold on
stem(a_2PAM,'green');
legend('a_reb_2PAM','a_2PAM');
hold off

%8
r1_fil_2PAM=conv(r21_PAM,h);

a1_reb_2PAM=r1_fil_2PAM(Nss:Nss:end);

figure; 
stem(a1_reb_2PAM,'blue');
hold on
stem(a_2PAM,'green');
legend('a1_reb_2PAM','a_2PAM');
hold off


r2_fil_2PAM=conv(r22_PAM,h);

a2_reb_2PAM=r2_fil_2PAM(Nss:Nss:end);

figure; 
stem(a2_reb_2PAM,'blue');
hold on
stem(a_2PAM,'green');
legend('a2_reb_2PAM','a_2PAM');
hold off


%2.4
%9
fm_s_2PAM=conv(s_2PAM,h);
s_fm_2PAM=fm_s_2PAM(Nss:Nss:end);

fmw=conv(w,h);
w_fm=fmw(Nss:Nss:end);
% figure; 
% stem(s_fm_2PAM,'blue');
% hold on
% stem(w_fm,'green');
% legend('s_fm_2PAM','w_fm');
% hold off
 
 %10
 Ptx= (sum(mean(s_fm_2PAM.^2)));
 
 %11
 Pww=(length(w_fm)/2);
 
 %12
 snr= Ptx/Pww;
 snrdB=10*log(snr);
 %--------------------------------------------------------------
%13
%---------------------------------------------------------------
%9
fm_s_2PAM1=conv(s_2PAM,h);
s_fm_2PAM1=fm_s_2PAM1(Nss:Nss:end);

fmw1=conv(w1,h);
w_fm1=fmw1(Nss:Nss:end);

 %10
 Ptx1= (sum(mean(s_fm_2PAM1.^2)));
 %11
 Pww1=(length(w_fm1)/2);
 %12
 snr1= Ptx1/Pww1;
 snrdB1=10*log(snr1);
 %9
 fm_s_2PAM2=conv(s_2PAM,h);
s_fm_2PAM2=fm_s_2PAM2(Nss:Nss:end);

fmw2=conv(w2,h);
w_fm2=fmw2(Nss:Nss:end);

 %10
 Ptx2= (sum(mean(s_fm_2PAM2.^2)));
 %11
 Pww2=(length(w_fm2)/2);
 %12
 snr2= Ptx2/Pww2;
 snrdB2=10*log(snr2);
 
 %----------------------------------------------------------------
 %14
 %----------------------------------------------------------------
 %2
w3=Pw*rand(size(s_4PAM));
wmitjana3=mean(w3);
wvarianca3=var(w3);
%3
r_4PAM=w3+s_4PAM;
figure; subplot(1,2,1); plot(s_4PAM);
ylim([-1, 1]);
 subplot(1,2,2); plot((r_4PAM));
 ylim([-1, 1]);

 %4

w4=Pw1*rand(size(s_4PAM));
wmitjana4=mean(w4);
wvarianca4=var(w4);

r41_PAM=w4+s_4PAM;
figure; subplot(1,2,1); plot(s_4PAM);
ylim([-1, 1]);
 subplot(1,2,2); plot((r41_PAM));
 ylim([-1, 1]);

  

w5=Pw2*rand(size(s_4PAM));
wmitjana5=mean(w5);
wvarianca5=var(w5);

r42_PAM=w5+s_4PAM;
figure; subplot(1,2,1); plot(s_4PAM);
ylim([-1, 1]);
 subplot(1,2,2); plot((r42_PAM));
 ylim([-1, 1]);
 
 
%2.3
%5
r_fil_4PAM=conv(r_4PAM,h);
%6
a_reb_4PAM=r_fil_4PAM(Nss:Nss:end);
%7
figure; 
stem(a_reb_4PAM,'blue');
hold on
stem(a_4PAM,'green');
legend('a_reb_4PAM','a_4PAM');
hold off

%8
r1_fil_4PAM=conv(r41_PAM,h);

a1_reb_4PAM=r1_fil_4PAM(Nss:Nss:end);

figure; 
stem(a1_reb_4PAM,'blue');
hold on
stem(a_4PAM,'green');
legend('a1_reb_4PAM','a_4PAM');
hold off


r2_fil_4PAM=conv(r42_PAM,h);

a2_reb_4PAM=r2_fil_4PAM(Nss:Nss:end);

figure; 
stem(a2_reb_4PAM,'blue');
hold on
stem(a_4PAM,'green');
legend('a2_reb_4PAM','a_4PAM');
hold off


%2.4
%9
fm_s_4PAM=conv(s_4PAM,h);
s_fm_4PAM=fm_s_4PAM(Nss:Nss:end);

fmw3=conv(w3,h);
w3_fm=fmw3(Nss:Nss:end);

 %10
 Ptx3= (sum(mean(s_fm_4PAM.^2)));
%11
 Pww3=(length(w3_fm)/2);
 %12
 snr3= Ptx3/Pww3;
 snrdB3=10*log(snr3);
 %-----------------------------------
 %13
 %-----------------------------------
 %9
 fm_s_4PAM1=conv(s_4PAM,h);
s_fm_4PAM1=fm_s_4PAM1(Nss:Nss:end);

fmw4=conv(w4,h);
w_fm4=fmw4(Nss:Nss:end);

 %10
 Ptx4= (sum(mean(s_fm_4PAM1.^2)));
 %11
 Pww4=(length(w_fm4)/2);
 %12
 snr4= Ptx4/Pww4;
 snrdB4=10*log(snr4);
 %9
 fm_s_4PAM2=conv(s_4PAM,h);
s_fm_4PAM2=fm_s_4PAM2(Nss:Nss:end);

fmw5=conv(w5,h);
w_fm5=fmw5(Nss:Nss:end);

%10
 
 Ptx5= (sum(mean(s_fm_4PAM2.^2)));
 %11
 Pww5=(length(w_fm5)/2);
 %12
 snr5= Ptx5/Pww5;
 snrdB5=10*log(snr5);
 