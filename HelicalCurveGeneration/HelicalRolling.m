%function HelicalRolling()
% beta=pi/3;
clear;
close all;

R=0.2;
h=0.1;

f=0.6;
T=1/f;

% t=0:pi/100:2*pi;%
t=0:0.001:T;
x=R*cos(2*pi*f*t);
y=R*sin(2*pi*f*t);
z=2*pi*h*f*t;
%z=1.12*t;
figure;
%plot3(x,y,z,'LineWidth',4); %hold on;
%plot3(x,y,z,'LineWidth',4,'color',[0.6350 0.0780 0.1840]); hold on;
plot3(x,y,z,'LineWidth',5,'color',[0.0118 0.5098 0.0431]); hold on;
 %plot3(x,y,z,'LineWidth',9,'color',[0.0118 0.5098 0.0431]); hold on;
% xlabel('X') ;
% ylabel('Y') ;
% zlabel('Z') ;

t1=0:0.15:1.4;
x1=R*cos(2*pi*f*t1);
y1=R*sin(2*pi*f*t1);
z1=2*pi*h*f*t1;
%z1=2*t1;
plot3(x1,y1,z1,'o','LineWidth',5,'MarkerSize',5,'color',[0.6350 0.0780 0.1840])
%plot3(x1,y1,z1,'o','LineWidth',9,'MarkerSize',9,'color',[0.6350 0.0780 0.1840])
hold off;


set(gca,'FontSize',14); set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
 %set(gca,'FontSize',28); set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
zticks(0:0.2:1.0);zlim([0 1.0]);
yticks(-0.4:0.2:0.4);ylim([-0.4 0.4]) ;
xticks(-0.4:0.2:0.4);xlim([-0.4 0.4]) ;
grid on;
axis equal;
% end
                                                                                                    
