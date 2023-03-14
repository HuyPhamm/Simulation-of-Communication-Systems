a = 1;
b = 1;
h = 0.1; % K�ch th??c b??c
x0 = 0; % Gi� tr? ban ??u c?a x
y0 = 0; % Gi� tr? ban ??u c?a y
xn = 1; % Gi� tr? t?i ?a c?a x

% T�nh s? b??c
N = round((xn - x0)/h);

% Kh?i t?o c�c m?ng l?u tr?
x = zeros(N+1,1);
y = zeros(N+1,1);

% G�n gi� tr? ban ??u
x(1) = x0;
y(1) = y0;

% �p d?ng ph??ng ph�p Euler
for n = 1:N
    x(n+1) = x(n) + h;
    y(n+1) = y(n) + h*(2*a*x(n)^2 + x(n) - 6*b*y(n));
end

% V? ?? th?
plot(x, y)
xlabel('x')
ylabel('y')
title('Nguyen ham cua phuong trinh y'' = 2ax^2 + x - 6by')
