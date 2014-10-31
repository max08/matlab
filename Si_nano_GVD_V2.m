lambda = 1.3e-6:0.05e-6:1.9e-6;
n24per=[2.57704358372386 	2.53740438137879 	2.49763776159955 	2.45764048258329 	2.41732058911432 	2.37659758850003 	2.33540258318807 	2.29367852486634 	2.25138074572688 	2.20847787916458 	2.16495327111996 	2.12080697264135 	2.07605840365020 ];
nslica = [2.33614864040238 	2.28156306624356 	2.22945256320207 	2.17944574645812 	2.13120964011775 	2.08445459582083 	2.03893577613540 	1.99445271543673 	1.95084807656908 	1.90800627380142 	1.86585238534482 	1.82435148396882 	1.78350831415641 ];
C = 3e8;
omega = 2*pi*C./lambda;
dn24perdlambda = [diff(n24per)./diff(lambda),0];
ddn24perddlambda = [diff(dn24perdlambda)./diff(lambda),0];
D24per = 1e12*1e3*1e-9 .* -lambda ./ C .* ddn24perddlambda;
plot(lambda,D24per,'b-'),hold on;
dnslicadlambda = [diff(nslica)./diff(lambda),0];
ddnslicaddlambda = [diff(dnslicadlambda)./diff(lambda),0];
Dslica = 1e12*1e3*1e-9 .* -lambda ./ C .* ddnslicaddlambda;
%plot(lambda,Dslica,'b-');
xlabel('lambda/m'),ylabel('GVD (ps/nm km)');
axis([1.3e-6,1.8e-6,-2000,4000]),grid on;
