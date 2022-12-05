load fisheriris

inds = ~strcmp(species, 'setosa');

X = meas (inds, 3:4);

y = species (inds);

SVMModel = fitcsvm(x,y);

sv = SVMModel.SupportVectors;

gscatter (X(:,1),x(:,2),y)

hold on

plot(sv(:,1), sv(:,2), 'ko');

legend('versicolor', 'virginica', 'Support Vector')