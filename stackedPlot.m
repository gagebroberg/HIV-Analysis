delta = 0.4477;
N = 10;
c = 5.1725;
B = 0.13;
K = c/(N*412)
% x -> T*, V, T
tcellrhs = @(t,x)[k*x(2)*x(3) - delta*x(1); 
    N*delta*x(1) - c*x(2); 
    B*(1000 - x(3)) - k*x(2)*x(3)];
[t,x] = ode45(tcellrhs,[0, 100],[0,0.001,1000])
subplot(2,1,1)
plot(t,x(:,3))
title('Uninfected T-cells','interpreter','latex','FontSize',16)
xlabel('Days','interpreter','latex','FontSize',14)
subplot(2,1,2)
plot(t,x(:,2))
title('Virions','interpreter','latex','FontSize',16)
xlabel('Days','interpreter','latex','FontSize',14)

