% Pham Hoang Huy - B20DCVT188
t = linspace(0, 1, 1000);
A = [1, 1, 2];
phi = [0, pi/4, 0];
fi=[10,80,80];
% Tính toán tín hi?u s(t)
S = 0;
for i = 1:3
    S = S+A(i)*cos(2*pi*fi(i)*t + phi(i)); 
end
%Ve tin hieu S(t) va pho tren so 2D
figure(1);
subplot(2, 1, 1);
plot(t,S);
subplot(2,1,2);
N = length(S);
f = (-N/2:N/2-1)*(1/(N*0.1));
FFT = abs(fftshift(fft(S)));
plot(f,FFT);
figure(2);
subplot(2,1,1);
plot3(t, ones(size(t)), S);
%Ve tin hieu S(t) va pho tren so 3D
subplot(2,1,2);
N = length(S);
f = (-N/2:N/2-1)*(1/(N*0.1));
FFT = abs(fftshift(fft(S)));
plot3(f, ones(size(f)), FFT)
%Ve tin hieu S(t) tren cac cua so con theo tung gia tri i
figure(3);
for i = 1:3
    subplot(3,1,i);
    S= A(i)*cos(2*pi*fi(i)*t + phi(i)); 
    plot(t,S);
end
%Ve pho tin hieu S(t) tren cac cua so con theo tung gia tri i
figure(4);
for i = 1:3
    subplot(3,1,i);
    S= A(i)*cos(2*pi*fi(i)*t + phi(i)); 
    N = length(S);
    f = (-N/2:N/2-1)*(1/(N*0.1));
    FFT = abs(fftshift(fft(S)));
    plot(f,FFT);
end

