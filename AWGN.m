fc=200;
flm=fc;
t=[0:1/flm:1];
m=sin(2*pi*t)+3*cos(4*pi*t);
%plot(t,m);
A=5;
y=awgn(m,A);
subplot(311)
plot(t,m);
title('tin hieu ban tin ban dau');
subplot(312);
plot(t,y);
title('tin hieu sau dieu che');
tlm=0:1/flm:(1/flm)*5;
m1=sin(2*pi*tlm)+3*cos(4*pi*tlm);
y1=awgn(m1,A);
subplot(313)
plot(tlm,y1);
title('tin hieu sau khi di qua kenh truyen trong khoang 5 chu ki dau');
