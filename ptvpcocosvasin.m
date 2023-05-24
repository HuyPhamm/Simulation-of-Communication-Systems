y(1) = 0;
t0=0;
t1=pi/2;
h=0.01;
N=(t1-t0)/h;
for i = 1:N/pi;
    y(i+1) = y(i) + h*(cos(i*pi)-sin(i*pi));
end
plot(y);