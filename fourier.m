% Thi?t l?p thông s?
T = 5; % Chu k? xung (s)
t = -10*T : 0.01 : 10*T; % Vector th?i gian

% T?o tín hi?u s(t)
signal = zeros(size(t));
signal(abs(t) <= T/2) = -1;

% V? ?? th?
%plot(t, signal,'linewidth',2);
xf=fft(signal,10);
stem(xf);
%plot(t,xf);
