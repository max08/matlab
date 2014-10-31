lambda = 5e-7:1e-8:16e-7;
C = 3e8;
omega = 2*pi*C./lambda;
lambda1 = 0.0684043e-6;
lambda2 = 0.1162414e-6;
lambda3 = 9.896161e-6;
omega1 = 2*pi*C/lambda1;
omega2 = 2*pi*C/lambda2;
omega3 = 2*pi*C/lambda3;
B1 = 0.6961663;
B2 = 0.4079426;
B3 = 0.8974794;
m = 1 + B1*omega1^2./(omega1^2 - omega.^2) + B2*omega2^2./(omega2^2 - omega.^2) + B3*omega3^2./(omega3^2 - omega.^2);
n = m .^ 0.5;
plot(lambda,n,'b.'),
axis([5e-7,16e-7,1.44,1.49]),grid on,hold on;
%%beta = n*omega ./ C;
dndomega = [diff(n)./diff(omega),0];
%dndomega = [dn,0];
ng = n + omega.*dndomega;
plot(lambda,ng,'r.')
