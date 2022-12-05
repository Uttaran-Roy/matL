load fisheriris
x=meas(:,3:4);

figure;
plot(x(:,1),x(:,2),'k*','MarkerSize',8);
title 'fisher''s Iris Data';
xlabel 'petal lengths (cm)';
ylabel 'petal widths (cm)';
load fisheriris
x=meas(:,3:4);

figure;
plot(x(:,1),x(:,2),'k*','MarkerSize',8);
title 'fisher''s Iris Data';
xlabel 'petal lengths (cm)';
ylabel 'petal widths (cm)';

rng(1);
[idx,c]=kmeans(x,3);