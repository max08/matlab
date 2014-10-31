n = [2.21494497378195 2.12941302337423 	2.04103247198067 	1.95034031472299 	1.85830688278544 	1.76655351179451 	1.67759019606937 	1.59495017083117 	1.52301777603791 	1.46639742305575 	1.42831138403173 	1.40674132154839 
];
C = 3e8;
lambda = 1.35e-6:0.05e-6:1.9e-6;
%plot(lambda,n,'r-'),grid on,hold on;
%axis([1.4e-6,1.85e-6,1,5.5]);
omega = 2*pi*C./lambda;
dndomega = [diff(n)./diff(omega),0];
ng = n + omega.*dndomega;
%plot(lambda,ng,'b-'),hold on;
dndlambda = [diff(n)./diff(lambda),0]; 
ddnddlambda =[diff(dndlambda)./diff(lambda),0];
%beta2 =1e24 .* lambda .^3 ./ (2*pi*C^2).* ddfddlambda ; 
df = diff(n)./diff(omega); 
dndomega = [df,0];%²¹È«Î¬¶È
ddn = diff(dndomega) ./ diff(omega);
ddnddomega = [ddn,0];
beta2 = 1e24 .* (2 .* dndomega + omega .* ddnddomega)./C;
plot(lambda(2:12),beta2(1:11),'r-');
axis([1.4e-6,1.85e-6,-20,100]),grid on


