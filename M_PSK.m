M = 4; % Alphabet size
x = randint(500,1,M); % Message generator
% Use QPSK modulation to produce y.
h = modem.pskmod(M,pi/4);
y = modulate(h,x);
% Transmit signal through an AWGN channel.
ynoisy = awgn(y,15);
% Create scatter plot from noisy data.
%h = scatterplot(ynoisy,1,0);
hold on;
%scatterplot(y,1,0,'or',h);
% Demodulate ynoisy to recover the message.
h = modem.pskdemod(M,pi/4);
z=demodulate(h,ynoisy);
R=1e3;
Tb=1/R;
Nb=length(x);
Timewindow =Nb*Tb;
ts=Timewindow/(Nb-1);
t=0:ts:Timewindow;
p=sqrt((2/Tb) * rectpuls(t/Tb));
plot(t,p)

    
