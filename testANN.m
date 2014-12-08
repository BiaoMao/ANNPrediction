clc;clear
%% Try to train data
load priceData;
X = allData';
N = length(allData);
X = num2cell(X);
T = 1:N;
T = num2cell(T);
net = timedelaynet(24);% 24 delays and 10 neurons
view(net)

% Prepare the data
[Xs, Xi, Ai, Ts] = preparets(net, X, T);

% Train data
[net, tr] = train(net, Xs, Ts, Xi, Ai);
nntraintool
plotperform(tr)
