M = 16; % Alphabet size
x = randint(5000,1,M);
% Use 16-QAM modulation to produce y.
y=modulate(modem.qammod(M),x);
% Transmit signal through an AWGN channel.
ynoisy = awgn(y,15,'measured');
% Create scatter plot from noisy data.
h = scatterplot(ynoisy,1,0);
hold on;
scatterplot(y,1,0,'or',h); hold off;

