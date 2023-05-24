M = 8; % Alphabet size
x = randint(5000,1,M);
% Use 8-ASK modulation to produce y.
y=pammod(x,M);
% Transmit signal through an AWGN channel.
ynoisy = awgn(y,15,'measured');
% Create scatter plot from noisy data.
h = scatterplot(ynoisy,1,0);
hold on;
scatterplot(y,1,0,'or',h); hold off;
