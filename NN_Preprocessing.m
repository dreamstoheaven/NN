open('C:\Users\tzhu02\Desktop\Blood Pressure\FilteredGraphs\Baby3289.fig');
h = findobj(gca,'type','line');
x = get(h,'Xdata');
y = get(h,'Ydata');

w_t_m = cell2mat(x(4,1));
w_m = cell2mat(y(4,1));
w_t_m = w_t_m(21601:43200);
w_m = w_m(1:43200);

try
    for i = 0:100
        dlmwrite('C:\Users\tzhu02\Desktop\Blood Pressure\NN\X_train.csv', w_m(1+i*400:(i+1)*400),'delimiter',',','-append');
        dlmwrite('C:\Users\tzhu02\Desktop\Blood Pressure\NN\Y_train.csv', zeros, 'delimiter',',','-append');
    end
catch
end