%AMI
d=randi(2,1,1500)-1;
R=50e6;
Tb=1/R;
Nb=length(d);
Timewindow =Nb*Tb;
ts=Timewindow/(Nb-1);
t=0:ts:Timewindow;
y=zeros(size(t));
code =[];
s = 1;
for k = 1:Nb
    if d(k) == 0
        code(k) = 0;
    else
        s = s+1;
    end
    if mod(s,2)==0
        code(k) = 1;
    else
        code(k) = -1;
    end
end
stairs(t,code);
axis([0 2e-7 -1.2 1.2]);
