function SideW(A,B,fa,fb,beta,T)
% beta=pi/3;
close all;
T=1.2;
fa=1.7;
fb=1.7;
A=.2;
B=.1;
beta=pi/4;

t=0:0.01:T;
y=A*sin(2*pi*fa*t);
z=B*sin(2*pi*fb*t+beta);
figure;
plot3(t,y,z,'LineWidth',3); hold on;

t=0:0.1:0.9;
y=A*sin(2*pi*fa*t);
z=B*sin(2*pi*fb*t+beta);
plot3(t,y,z,'o','LineWidth',4,'MarkerSize',3)

hold off;

set(gca,'FontSize',12); set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
xticks(0:0.2:1.2);xlim([0 1.2]);
yticks(-0.2:0.1:0.2);ylim([-0.2 0.2]) ;
zticks(-0.1:0.05:0.1);zlim([-0.1 0.1]) ;
grid on;
axis equal;
end
                                                                                                    
