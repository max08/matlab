clear all;
n1 = [2.942747191
2.883987178
2.826324252
2.769289589
2.712514884
2.655706051
2.598625074
2.541077588
2.482904551
2.423977161
2.364194435
2.303483303
2.241801269
2.179141946
2.115544016
2.051104376
1.985996233
1.920492769
1.854996067
1.79006915
1.726465086];
n2 = [2.924888854
2.865931311
2.808243079
2.751339164
2.694838067
2.638435147
2.581884112
2.52498412
2.467571124
2.409512387
2.350703682
2.291068919
2.230562247
2.169172842
2.106932883
2.043929303
1.980320008
1.916355206
1.852403521
1.788981179
1.726779501];
n3 = [2.908761032
2.849525843
2.791733442
2.734882925
2.67857944
2.622507359
2.566411486
2.51008388
2.453354835
2.396087058
2.33817249
2.279531511
2.220114512
2.159905998
2.098931648
2.037268813
1.975061142
1.912537704
1.850036646
1.78803184
1.727158726];
n1 = n1';
n2 = n2';
n3 = n3';
%n6 = n6';
lambda = 1e-6:0.05e-6:2e-6;
C = 3e8;
%omega = 2*pi*C./lambda;
dn1dlambda = [diff(n1)./diff(lambda),0];
ddn1ddlambda = [diff(dn1dlambda)./diff(lambda),0];
D1 = 1e12*1e3*1e-9 .* -lambda ./ C .* ddn1ddlambda;
dn2dlambda = [diff(n2)./diff(lambda),0];
ddn2ddlambda = [diff(dn2dlambda)./diff(lambda),0];
D2 = 1e12*1e3*1e-9 .* -lambda ./ C .* ddn2ddlambda;
dn3dlambda = [diff(n3)./diff(lambda),0];
ddn3ddlambda = [diff(dn3dlambda)./diff(lambda),0];
D3 = 1e12*1e3*1e-9 .* -lambda ./ C .* ddn3ddlambda;
%dn6dlambda = [diff(n6)./diff(lambda),0];
%ddn6ddlambda = [diff(dn6dlambda)./diff(lambda),0];
%D6 = 1e12*1e3*1e-9 .* -lambda ./ C .* ddn6ddlambda;
plot(lambda,D1,'r-'),hold on;
plot(lambda,D2,'g-'),hold on;
plot(lambda,D3,'b-'),hold on;
%plot(lambda,D6,'m-'),hold on;
axis([1e-6,1.9e-6,-2000,2000])