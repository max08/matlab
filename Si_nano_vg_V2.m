lambda = 1.3e-6:0.05e-6:1.9e-6;
n24per=[2.57704358372386 	2.53740438137879 	2.49763776159955 	2.45764048258329 	2.41732058911432 	2.37659758850003 	2.33540258318807 	2.29367852486634 	2.25138074572688 	2.20847787916458 	2.16495327111996 	2.12080697264135 	2.07605840365020 ];
nslica = [2.33614864040238 	2.28156306624356 	2.22945256320207 	2.17944574645812 	2.13120964011775 	2.08445459582083 	2.03893577613540 	1.99445271543673 	1.95084807656908 	1.90800627380142 	1.86585238534482 	1.82435148396882 	1.78350831415641 ];
C = 3e8;
omega = 2*pi*C./lambda;
dn24per = diff(n24per)./diff(omega);
dn24perdomega = [dn24per,0];
ng24per = n24per + omega.*dn24perdomega;
dnslica = diff(nslica)./diff(omega);
dnslicadomega = [dnslica,0];
ngslica = nslica + omega.*dnslicadomega;
%%vg = C ./ ng;
xlabel('lambda/m');
ylabel('vg/c');
axis([1.3e-6,1.8e-6,0.252,0.282]),grid on,hold on;
%lambda = lambda +0.05e-6;
plot(lambda,1 ./ ng24per,'r-'),hold on;
%plot(lambda,1 ./ ngslica,'b-');
%%plot(lambda,vg,'r.')