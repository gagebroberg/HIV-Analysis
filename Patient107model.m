% Question #4 V0 = p(1), c = p(2), delta = p(3)
times = [1/12 1/6 1/4 1/2 3/4 1 5/4 3/2 7/4 2 3 4 5 6 7];
viral = [119 137 111 119 89 103 89 58 67 72 30 25 16 8 6].*1000;  
v = @(p,t) p(1)*exp(-p(2).*t)+(p(2)*p(1)/(p(2)-p(3)))*((p(2)/(p(2)-p(3)))*(exp(-p(3).*t)-exp(-p(2).*t))-(p(3).*t.*exp(-p(1).*t)));
% Central Differences
p0 = [77000 3.09 0.50];
[p ssr] = lsqcurvefit(v,p0,times,viral)
vpa(p)
v0=p(1);
c=p(2);
delta=p(3);
%t=0:8;
modelviral=v(p,times)
semilogy(times,modelviral,'o', times, modelviral)
title("Patient 107 Viral Conentration Over Time")
xlabel("Time (days)");
ylabel("Total viral concentration (virions per ml)");
