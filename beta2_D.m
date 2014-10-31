lambda = 10e-7:0.5e-8:16e-7;
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
df = diff(n)./diff(omega);
dfdomega = [df,0];%²¹È«Î¬¶È
ddf = diff(dfdomega) ./ diff(omega);
ddfddomega = [ddf,0];
%beta2 = 1e24*1e3 .* (2 .* dfdomega + omega .* ddfddomega)./C ;
%plot(lambda,beta2,'b.'),
%axis([10e-7,16e-7,-40,40]),
%grid on,hold on;
ng = n + omega.*dfdomega;
beta1 = ng ./ C;
D1 = 1e12*1e3*1e-9 .* diff(beta1) ./ diff(lambda);
plot(lambda,[D1,0],'r.');
dfdlambda = [diff(n)./diff(lambda),0];
ddfddlambda = [diff(dfdlambda)./diff(lambda),0];
D2 = 1e12*1e3*1e-9 .* -lambda ./ C .* ddfddlambda;
plot(lambda,D2,'b.'),hold on;
beta2 =1e24*1e3 .* lambda .^3 ./ (2*pi*C^2) .* ddfddlambda ;
plot(lambda,beta2,'b.'),
axis([10e-7,16e-7,-40,40]),
grid on