clear all;
lambda = 1.3e-6:0.2e-6:3.9e-6;
%%%%%%%when Hs = 1.24e-7
%n =[2.30469888481102 2.25286410079272 	2.20160414381723 	2.15034022963026 	2.09901221162744 	2.04768178365875 	1.99638039872218 	1.94507877092805 	1.89371082486529 	1.84221194236502 	1.79055227159525 	1.73875960290934 	1.68693246055729 	1.63524470423968 ];
%%%%%%%when Hs = 1.25e-7
%n=[2.30465473035733 2.25278014051053 	2.20146515031142 	2.15013382954741 	2.09873177774438 	2.04732784300729 	1.99596019311712 	1.94460452689442 	1.89319760701620 	1.84167580450053 	1.79000891722090 	1.73822352869225 	1.68641642948197 	1.63475942299422 ];
%%%%%%%when Hs = 1.26e-7
%n=[2.30461175044780 	2.25269790287840 	2.20132855125998 	2.14993051176632 	2.09845501225982 	2.04697799186303 	1.99554432178583 	1.94413470345104 	1.89268879042375 	1.84114397574102 	1.78946973733275 	1.73769146236300 	1.68590422489570 	1.63427777117614 ];
%%%%%%when Hs = 1.27e-7
n=[2.30456945118622 	2.25261690746452 	2.20119385221421 	2.14972973796027 	2.09818132469356 	2.04663157050332 	1.99513203574540 	1.94366845641787 	1.89218341355635 	1.84061536597929 	1.78893349065829 	1.73716200687076 	1.68539428327559 	1.63379801503532 ];
C = 3e8;
%omega = 2*pi*C./lambda;
dndlambda = [diff(n)./diff(lambda),0];
ddnddlambda = [diff(dndlambda)./diff(lambda),0];
D = 1e12*1e3*1e-9 .* -lambda ./ C .* ddnddlambda;
lambda = lambda +0.1e-6;
plot(lambda,D,'b-');
axis([1.5e-6,3.4e-6,-50,50]),grid on;