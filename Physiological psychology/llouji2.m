a0=[1,0,0.2];

t=10:10:100; 
p=[0 0 0 0 0.2 0.5 1 1 1 1];

fun=@(a,t)a(1)./(1+(a(1)/a(2)-1)*exp(-a(3).*t));

a= nlinfit(t,p,fun,a0)

plot(t,fun(a,t))
hold on
plot(t,fun(a,t),'ro')
hold on
plot(t,p)
plot(t,p,'ro')
%b = 1.022./(1+(1.8019e+05.*exp(-0.205.*t)));
%plot(t,b)

xlabel('100-f/Hz')
ylabel('Accuracy')