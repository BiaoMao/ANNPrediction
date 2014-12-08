clc;clear
%% Sample of ANN
net = timedelaynet(20);
view(net)
[X,T] = simpleseries_dataset;
[Xs,Xi,Ai,Ts] = preparets(net,X,T);
net = train(net,Xs,Ts);
Y = net(Xs,Xi,Ai)