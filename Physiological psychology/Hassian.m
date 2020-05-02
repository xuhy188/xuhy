function [ H ] = Hassian( x, y, theta )
% ¼ÆËãHassian¾ØÕó
%   Detailed explanation goes here
mu = 1./(1+exp(-x*theta));
V = mu.*(1-mu);
V = diag(V);
H = -x'*V*x;

end

