%Pham Hoang Huy - B20DCVT188
%a=8;b=8;c=18;N=66
a=8;b=8;c=18;N=16;
%a,
A=[a-b-c;c*(2*b-a);a*(c-3*c)];
B=[10;5;2];
A=[a;a;a];
%b,
A=[A A A A A A A A A A A A;
   A A A A A A A A A A A A;
   A A A A A A A A A A A A;
   A A A A A A A A A A A A];
A(12,12)=10
%c,
D1=randi([0,1],1,10);
D2=randi([0,1],1,10);
D3=randi([0,1],1,10);
D4=randi([0,1],1,10);
D5=randi([0,1],1,10);
D=[D1;D2;D3;D4;D5]
%d,
function [Xn] = fibonacci(N)
    Xn = zeros(1,N+1);
    Xn(1) = 0;
    Xn(2) = 1;
    for i = 3:N+1
        Xn(i) = Xn(i-1) + Xn(i-2);
    end
    Xn = Xn(N+1)
end




