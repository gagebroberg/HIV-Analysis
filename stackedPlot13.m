k = c/(N * 412);
delta = 0.4477;
N = 10;
c = 5.1725;
B = 0.13;
tcellrhs = @(t,x)[B*(1000 - x(1)) - k*x(3)*x(1);
    k*x(3)*x(1) - delta*x(2); 
    -c * x(3);
    N*delta*x(2) - c*x(4);
]
% T T_star V_I V_NI 
[t,x] = ode45(tcellrhs,[0,30],[205,225,350,0])
subplot(2,1,1)
plot(t,x(:,1))
title('Uninfected T-cells','interpreter','latex','FontSize',16)
xlabel('Days','interpreter','latex','FontSize',14)
subplot(2,1,2)
plot(t,x(:,2))
title('Virions','interpreter','latex','FontSize',16)
xlabel('Days','interpreter','latex','FontSize',14)
