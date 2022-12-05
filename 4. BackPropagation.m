load simplefit_dataset 

[x,t] = simplefit_dataset;

trainFcn = 'trainlm';

hiddenLayerSize = 10;

net = fitnet (hiddenLayerSize, trainFcn);

net.divideParam.trainRatio = 70/100;

net.divideParam.valRatio = 15/100;

net.divideParam.testRatio = 15/100;

[net, tr] = train (net,x,t);

view(net)

y = net(x);

e = gsubtract(t, y);

performance = perform(net,t,y)