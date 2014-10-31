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
num=16;
pn=polyfit(lambda,n,num);
neffn=polyval(pn,lambda);
for i=1:num
    dpn(i)=(num+1-i)*pn(i);
end
for i=1:num-1
    ddpn(i)=(num-i)*dpn(i);
end
D = 1e6 .* -lambda./C.*polyval(ddpn,lambda);
plot(lambda,D),grid on;
beta2 =1e24*1e3 .* lambda.^3 ./ (2*pi*C^2) .*polyval(ddpn,lambda);
plot(lambda,beta2),grid on
 