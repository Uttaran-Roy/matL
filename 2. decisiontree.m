load fisheriris

t = fitctree (meas(:,1:2), species, 'PredictorNames', {'SL' 'SW' });

view(t, 'Mode','graph');