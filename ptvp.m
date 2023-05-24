%y'(t)+ay(t)=r
a=1;
r=1;
x(1)= 0;
y(1) = 0;
t0=0;
t1=2;
h=0.01;
N=(t1-t0)/h;
for i = 1:N
    x(i+1) = x(i) + h;
    y(i+1) = y(i) + h*(r-a*y(i));
end
plot(x,y)