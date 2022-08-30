delta = 0.4477;
N = 10;
c = 5.1725;
B = 0.35;
k = c/(N * 412)

% equilibrium point [1000, 0, 0]
tcellrhs = @(t,x)[k*x(2)*x(3) - delta*x(1); N*delta*x(1) - c*x(2); B*x(3) - k*x(2)*x(3)];
[t,x] = ode45(tcellrhs,[0,7],[1000,0,0])

% equilibrium point [412, 120.2113, 138.89]
tcellrhs = @(t,x)[k*x(2)*x(3) - delta*x(1); N*delta*x(1) - c*x(2); B*x(3) - k*x(2)*x(3)];
[t,x] = ode45(tcellrhs,[0,7],[412,120.3112,138.89])