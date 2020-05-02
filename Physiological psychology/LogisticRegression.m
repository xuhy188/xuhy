% �˳������
clear all
close all
clc

%% ��ȡ����
load q1x.dat;
load q1y.dat;

x = [ones(size(q1x, 1), 1) q1x];
y = q1y;

%% ѵ��
theta1 = zeros(size(x, 2), 1);
eps = 1e-6;
tol = 1;
while tol>eps
    theta0 = theta1;
    H = Hassian(x, y, theta0);
    J = Derivation(x, y, theta0);
    theta1 = theta0 - inv(H)*J;
    tol = norm(theta1-theta0);
end
theta = theta0

%% ��ͼ
x1 = x(:, 2);
x2 = x(:, 3);
index1 = find(y);index2 = find(y == 0);
plot(x1(index1), x2(index1), 'bo', x1(index2), x2(index2), 'rx');
hold on
xmin = min(x1);
xmax = max(x1);
fun = @(x)(-theta(2)/theta(3)*x - theta(1)/theta(3));
plot([xmin, xmax], [fun(xmin), fun(xmax)], '-g');
