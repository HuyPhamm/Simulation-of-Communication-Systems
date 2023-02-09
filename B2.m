V=[1 1;1 1];
M=[V V V; V V V; V V V];%Khai trien ma tran
M(2,:)=[];% Xoa hang 2
M(:,3)=[];% Xoa cot 3
z=M(4,:); % tao vecto tu hang 4
M(4,2)=j+5; % bien doi gia tri Hang 4 Cot 2
