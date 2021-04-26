%�����ź�
N = 256;
Fs = 150;
ts = (0:N-1)./Fs;
wave = 5 + 8*cos(2*pi*10.*ts) ...
    + 4*cos(2*pi*20.*ts + deg2rad(30)) ...
    + 2*cos(2*pi*30.*ts + deg2rad(60)) ...
    + 1*cos(2*pi*40.*ts + deg2rad(90)) ...
    + rand(1,length(ts)) ...
    ;
[Fre,Amp,~]=FFT(wave,Fs,false,false);
subplot(2,1,1);
plot(ts,wave);
subplot(2,1,2)
plot(Fre,Amp);