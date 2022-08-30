%initialize variables
syms t tstar v;
N = 10;
c = 5.1725;
B = 0.1305;
k = c/(N * 412);
delta = 0.4477;
v0 = 120.2113;

% system of equations
y = [tstar, v, t];
f=[k*v*t-delta*tstar, n*delta*tstar-c*v, B*t-k*v*t];

% jacobian matrix
J = jacobian(f,y);

% equilibrium point (1000, 0, 0)
t = 1000;
tstar = 0;
v = 0;
A2 = subs(J)
lamba = double(eig(A2))

% equilibrium point (412, 120.2113, 138.89)
t = 412;
v = 120.2113;
tstar = 138.89;
A1 = subs(J)
lamba = double(eig(A1))
