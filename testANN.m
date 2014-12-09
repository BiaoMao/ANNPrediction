clc;clear
%% Try to train data
load priceData;
Ty = allData';
N = length(allData);
Ty = num2cell(Ty);
net = narnet(1:24, 10);% 24 delays and 10 neurons
%view(net)

% Prepare the data
[Xs, Xi, Ai, Ts] = preparets(net, {},{}, Ty);

% Train data
[net, tr] = train(net, Xs, Ts, Xi, Ai);
nntraintool
plotperform(tr)

%% Testing the network
Y = net(Xs,Xi);
perf = perform(net,Ts,Y)
