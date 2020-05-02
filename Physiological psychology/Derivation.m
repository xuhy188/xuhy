function [ Dltheta ] = Derivation( x, y, theta )
% 计算对theta求导
%   Detailed explanation goes here
mu = 1./(1+exp(-x*theta));
for m = 1:length(theta)
    Dltheta(m) = (y-mu)'*x(:, m);
end
Dltheta = Dltheta(:);
end

