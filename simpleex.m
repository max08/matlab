lambda = 1.5e-6:0.2e-6:3.9e-6;
n = [3.34043455493210 	3.29037097275137 	3.24236247169653 	3.19520309390261 	3.14830662528664 	3.10134506847267 	3.05408184090728 	3.00630114348011 	2.95778489275942 	2.90831039943873 	2.85765447047521 	2.80559745036620 	2.75192502753423 ];
num=16;
pn=polyfit(lambda,n,num);
neffn=polyval(pn,lambda);
for i=1:num
    dpn(i)=(num+1-i)*pn(i);
end
for i=1:num-1
    ddpn(i)=(num-i)*dpn(i);
end
D = 1e12*1e3*1e-9 .* (-lambda) ./ C .*polyval(ddpn,lambda);
plot(lambda,D),grid on;