function [g,geq]=nonlcon(x)
[sigma, Q] = sol_TenBarTruss(x(1), x(2));
Yield = 250e+6;
displacement = 0.02;
g(1) = max(abs(sigma)-Yield);
g(2) = sqrt(Q(3)^2+Q(4)^2)-displacement;
geq=[];
