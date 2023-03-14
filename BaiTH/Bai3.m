%a=8;b=8;c=18;
A = [8 -8 18; 18 -16 8; 8 18 3*18];
B = [6; 3; 2];
check=det(A);
if check == 0
    disp('He phuong trinh vo nghiem hoac vo so nghiem');
else
    sol = linsolve(A, B);
    disp('he phuong trinh co nghiem');
    disp(sol);
end
    
