clear all;
n = [3.34043455493210 	3.29037097275137 	3.24236247169653 	3.19520309390261 	3.14830662528664 	3.10134506847267 	3.05408184090728 	3.00630114348011 	2.95778489275942 	2.90831039943873 	2.85765447047521 	2.80559745036620 	2.75192502753423 ];
C = 3e8;
lambda = 1.5e-6:0.2e-6:3.9e-6;
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
%beta2 = 1e24 .* (2 .* dndomega + omega .* ddnddomega)./C;
%plot(lambda(2:12),beta2(1:11),'r-');
%axis([1.4e-6,1.85e-6,-20,100]),grid on
D = 1e12*1e3*1e-9 .* (-lambda) ./ C .* ddnddlambda;
plot(lambda,D);
%axis([1.5e-6,3.5e-6,-30,25])

