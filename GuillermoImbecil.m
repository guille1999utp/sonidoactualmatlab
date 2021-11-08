%% Clear
clc
clear

%% Audios originales
Fs=10000;
T=1/Fs;
L=9000;
t=(0:L-1)*T;
frec=Fs*(0:(L/2)-1)/L;

%% Tecla #1
fa=1209;
fb=697;

wa=2*pi*fa;
ya=sin(wa*t);

wb=2*pi*fb;
yb=sin(wb*t);

Y=ya+yb;

YF=fft(Y);
data1=abs(YF/L);
data2=2*data1(1:L/2);

%% Tecla #2
fa2=1336;
fb2=697;

wa2=2*pi*fa2;
ya2=sin(wa2*t);

wb2=2*pi*fb2;
yb2=sin(wb2*t);

Y2=ya2+yb2;

YF2=fft(Y2);
data12=abs(YF2/L);
data22=2*data12(1:L/2);

%% Tecla #3
fa3=1477;
fb3=697;

wa3=2*pi*fa3;
ya3=sin(wa3*t);

wb3=2*pi*fb3;
yb3=sin(wb3*t);

Y3=ya3+yb3;

YF3=fft(Y3);
data13=abs(YF3/L);
data23=2*data13(1:L/2);

%% Tecla #4
fa4=1209;
fb4=770;

wa4=2*pi*fa4;
ya4=sin(wa4*t);

wb4=2*pi*fb4;
yb4=sin(wb4*t);

Y4=ya4+yb4;

YF4=fft(Y4);
data14=abs(YF4/L);
data24=2*data14(1:L/2);

%% Tecla #5
fa5=1336;
fb5=770;

wa5=2*pi*fa5;
ya5=sin(wa5*t);

wb5=2*pi*fb5;
yb5=sin(wb5*t);

Y5=ya5+yb5;

YF5=fft(Y5);
data15=abs(YF5/L);
data25=2*data15(1:L/2);

%% Tecla #6
fa6=1477;
fb6=770;

wa6=2*pi*fa6;
ya6=sin(wa6*t);

wb6=2*pi*fb6;
yb6=sin(wb6*t);

Y6=ya6+yb6;

YF6=fft(Y6);
data16=abs(YF6/L);
data26=2*data16(1:L/2);

%% Tecla #7
fa7=1209;
fb7=852;

wa7=2*pi*fa7;
ya7=sin(wa7*t);

wb7=2*pi*fb7;
yb7=sin(wb7*t);

Y7=ya7+yb7;

YF7=fft(Y7);
data17=abs(YF7/L);
data27=2*data17(1:L/2);

%% Tecla #8
fa8=1336;
fb8=852;

wa8=2*pi*fa8;
ya8=sin(wa8*t);

wb8=2*pi*fb8;
yb8=sin(wb8*t);

Y8=ya8+yb8;

YF8=fft(Y8);
data18=abs(YF8/L);
data28=2*data18(1:L/2);

%% Tecla #9
fa9=1477;
fb9=852;

wa9=2*pi*fa9;
ya9=sin(wa9*t);

wb9=2*pi*fb9;
yb9=sin(wb9*t);

Y9=ya9+yb9;

YF9=fft(Y9);
data19=abs(YF9/L);
data29=2*data19(1:L/2);

%% Tecla *
fapor=1209;
fbpor=697;

wapor=2*pi*fapor;
yapor=sin(wapor*t);

wbpor=2*pi*fbpor;
ybpor=sin(wbpor*t);

Ypor=yapor+ybpor;

YFpor=fft(Ypor);
data1por=abs(YFpor/L);
data2por=2*data1por(1:L/2);

%% Tecla #0
fa0=1209;
fb0=697;
wa0=2*pi*fa0;
ya0=sin(wa0*t);
wb0=2*pi*fb0;
yb0=sin(wb0*t);

Y0=ya0+yb0;

YF0=fft(Y0);
data10=abs(YF0/L);
data20=2*data10(1:L/2);

%% Tecla #
fanum=1209;
fbnum=697;

wanum=2*pi*fanum;
yanum=sin(wanum*t);

wbnum=2*pi*fbnum;
ybnum=sin(wbnum*t);

Ynum=yanum+ybnum;

YFnum=fft(Ynum);
data1num=abs(YFnum/L);
data2num=2*data1num(1:L/2);

%% Captura de audio

sample=audiorecorder(45000,8,1);
disp('Recording');
recordblocking(sample,8);
disp('Stop');
y=getaudiodata(sample);
YF4=fft(y);
dato14=abs(YF4/L);
dato24=2*dato14(1:L/2);
frec=Fs*(0:(L/2)-1)/L;
plot(frec(3:1500),dato24(3:1500),'r'),grid on,
xlabel('Frecuencia'),ylabel('Módulo'), title('Espectro en Frecuencia# 1')

