t = 1:1:25;
x = 5:5:25;
a=[0.9803 3.0912e-05 0.7514];
p=[0 0.05 0.7 0.95 1];
plot(t,fun(a,t))
hold on 
plot(x,p,'ro')
hold on 

a=[1.0163 6.5153e-05 0.5486];
p=[0 0 0.2 0.8 1];
plot(t,fun(a,t))
hold on 
plot(x,p,'ro')
hold on 

a=[1.0102 6.4295e-07 0.7541]
p=[0 0 0.05 0.7 1];
plot(t,fun(a,t))
hold on 
plot(x,p,'ro')
hold on 

xlabel('J(%)')
ylabel('probility of aperiodic')
title('abc combined')