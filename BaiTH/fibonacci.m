function [Xn] = fibonacci(N)
    Xn = zeros(1,N+1);
    Xn(1) = 0;
    Xn(2) = 1;
    for i = 3:N+1
        Xn(i) = Xn(i-1) + Xn(i-2);
    end
    Xn = Xn(N+1)
end