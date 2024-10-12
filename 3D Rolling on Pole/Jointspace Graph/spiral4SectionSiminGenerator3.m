%function simin=spiralSiminGenerator3(A,f,N)
% A = amplititude of the gait (in meters, the max length change)
% f = frequency of gait
% N= # of cycles to run the test
% lVec = cyclic Data (lVec) from either sin_f-1_amp-.1_n-50 or sin_f-1_amp-.15_n-50
close; clear;
A=0.04; f=1;N=8;
n=100;
T=1/f;
t=linspace(0,T,n+1)';t(end)=[];


l1=A*.5*(1+sin(2*pi*f*t));
l2=A*.5*(1+sin(2*pi*f*t+2*pi/3));
l3=A*.5*(1+sin(2*pi*f*t+4*pi/3));

ofs=pi/3;

l4=A*.5*(1+sin(2*pi*f*t+ofs));
l5=A*.5*(1+sin(2*pi*f*t+2*pi/3+ofs));
l6=A*.5*(1+sin(2*pi*f*t+4*pi/3+ofs));



l7=A*.5*(1+sin(2*pi*f*t+2*ofs));
l8=A*.5*(1+sin(2*pi*f*t+2*pi/3+2*ofs));
l9=A*.5*(1+sin(2*pi*f*t+4*pi/3+2*ofs));

l10=A*.5*(1+sin(2*pi*f*t+3*ofs));
l11=A*.5*(1+sin(2*pi*f*t+2*pi/3+3*ofs));
l12=A*.5*(1+sin(2*pi*f*t+4*pi/3+3*ofs));

lVec=[l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12];

%l1 l2 l3 l4 l5 l6 l7 l8 l9
figure;
plot(t,lVec,'LineWidth',2.5);grid on;
set(gca,'FontSize',22);set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
xlim([0 1]);xticks([0:0.2:1]);
ylim([-0.01 0.05]);yticks([-0.01:0.01:0.05]);
lgd=legend({'\it l_{11}','\it l_{12}','\it l_{13}','\it l_{21}','\it l_{22}','\it l_{23}','\it l_{31}','\it l_{32}','\it l_{33}','\it l_{41}','\it l_{42}','\it l_{43}'},'NumColumns',4);
set(lgd, 'FontSize', 10)
%set(lgd, 'FontName', 'Cambria Math')


% lVec=lVec-min(min(lVec));
% lVec=A*lVec/max(max(lVec));
% simin=[kron((0:N-1)',ones(n,1)*T)+kron(ones(N,1),t), kron(ones(N,1),lVec)];
% simin(end,1)
% end

