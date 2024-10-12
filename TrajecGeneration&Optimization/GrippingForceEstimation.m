close all;
Kb=0.91;
L=0.24;
A=0.2;
h=0.0955;
%A0=0.15;

% [X,Y] = meshgrid(1:0.5:10,1:20);

theta=asin((pi*h)/(2*L));
L1=L*cos(theta);

A0=0.1:0.025:0.2;
F=(Kb*L1*((1./A0)-(1/A)))/(A*A*(1-cos(L1/A)))

% beta=sqrt(4*L^2 -(pi^2*h^2))/(2*A);
% F2=(Kb*beta*((1./A0)-(1/A)))/(A*(1-cos(beta)))


% F=[(Kb.*L)./(A.*sin(L./A))].*[(1./A0)-(1./A)];

% plot (A0,F,'-O','MarkerSize',15,'LineWidth',4); hold on;
% set(gca,'FontSize',17);set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
% 
% Fex=Fex_reading;
% plot (A0,Fex,'-s','MarkerSize',20,'LineWidth',4,'color',[0.6350 0.0780 0.1840]);
% hold off;
% yticks(0:10:70);ylim([0 75]) ;
% xticks(0.1:0.025:0.2);xlim([0.1 0.2]) ;

% hold off;

% [Kb,A0] = meshgrid(1:0.1:4,0.1:0.01:0.4);
% F=[(Kb.*L)./(A.*sin(L./A))].*[(1./A0)-(1./A)];
% surf(Kb,A0,F);