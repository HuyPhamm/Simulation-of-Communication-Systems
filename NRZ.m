%NRZ
d=randi(2,1,10)-1;
R=50e6;
Tb=1/R;
Nb=length(d);
Timewindow =Nb*Tb;
ts=Timewindow/(Nb-1);
t=0:ts:Timewindow;
y=zeros(size(t));
for i=1:Nb;
    n=fix(t(i)/Tb)+1
    if n>=Nb
        n = Nb;
    end
    y(i)=d(n)*2-1;
end
hold on
stairs(t,y);
f=[0:Nb/2-1 -Nb/2:-1]/(Nb*1);
Xf=fft(y);
Hf=1./(1+(f./0.8).^(2*2));
Yf=Xf.*Hf;
y1=ifft(Yf);
stairs(t,y1,'r');


