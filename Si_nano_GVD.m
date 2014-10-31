lambda = 1.3e-6:0.01e-6:1.82e-6;
C = 3e8;
omega = 2*pi*C./lambda;
%dndomega = [diff(n)./diff(omega),0];
%dndomega = [dn,0];%²¹È«Î¬¶È
%ddnddomega = [diff(dndomega) ./ diff(omega),0];
%ddnddomega = [ddn,0];
%%ng = n + omega.*dndomega;
%%beta1 = ng ./ C;
%%D1 = 1e12*1e3*1e-9 .* diff(beta1) ./ diff(lambda);
%%plot(lambda,[D1,0],'r.');
dndlambda = [diff(n)./diff(lambda),0];
ddnddlambda = [diff(dndlambda)./diff(lambda),0];
D = 1e12*1e3*1e-9 .* -lambda ./ C .* ddnddlambda;
plot(lambda,D,'b.');
axis([1.3e-6,1.8e-6,-2000,4000]),grid on;
