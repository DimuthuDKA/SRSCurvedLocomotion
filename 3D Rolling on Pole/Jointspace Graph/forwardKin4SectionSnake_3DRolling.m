%function forwardKin4SectionSnake_3DRolling()
close all;
n=100;
np=72;
L=0.275;
r=0.02;
xi=linspace(0,1,n);

X1=zeros(1,n);X2=zeros(1,n);X3=zeros(1,n);X4=zeros(1,n);
Y1=zeros(1,n);Y2=zeros(1,n);Y3=zeros(1,n);Y4=zeros(1,n);
Z1=zeros(1,n);Z2=zeros(1,n);Z3=zeros(1,n);Z4=zeros(1,n);
l1=zeros(1,n);l2=zeros(1,n);l3=zeros(1,n);

% Anticlockwise
% q11=linspace(0,0,n/2); q12=linspace(0,0,n/2);

% Clockwise
%q11=linspace(pi,0,np/2); q12=linspace(0,-pi,np/2);

theta1=0;%[q11 q12];
theta2=theta1;
theta3=theta1;
theta4=theta1;
Theta=[theta1;theta2;theta3;theta4];

phi=linspace(pi/4,pi/4,n);
phi1=phi; phi2=phi;phi3=phi;phi4=phi;
Phi=[phi1;phi2;phi3;phi4];

% clockwise
% q11=linspace(-pi,0,n/2); q12=linspace(0,pi,n/2);
% theta=[q11 q12];
% phi=linspace(pi/3,pi/3,n);

delta=0;

for k=1:3
    for j=1:n
        l1(k,j) =-r*Phi(k,j)*cos(Theta(k,j));
        l2(k,j) =-r*Phi(k,j)*cos((2*pi/3)-Theta(k,j));
        l3(k,j) =-r*Phi(k,j)*cos((4*pi/3)-Theta(k,j));
    end
    figure;
    plot(l1(k,:),'LineWidth',1,'Color','y'); hold on;
    plot(l2(k,:),'LineWidth',1,'Color','b');
    plot(l3(k,:),'LineWidth',1,'Color','r');
    legend('l1','l2','l3')
    hold off;
end

%figure;
%for j=1:np
for i=1:n
    tmp1=HTM(L,[theta1;phi1(i)],xi(i));
    tmp2=Ry(delta)*tmp1;
    X1(i)=tmp2(1,4);
    Y1(i)=tmp2(2,4);
    Z1(i)=tmp2(3,4);
    
    tmp3=HTM(L,[theta2;phi2(i)],xi(i));
    %tmp4=tmp2*tmp3;
    tmp4=tmp2*Rz(pi/3)*tmp3;
    X2(i)=tmp4(1,4);
    Y2(i)=tmp4(2,4);
    Z2(i)=tmp4(3,4);
    
    tmp5=HTM(L,[theta3;phi3(i)],xi(i));
    %tmp6=tmp4*tmp5; %
    tmp6=tmp4*Rz(2*pi/3)*tmp5;
    X3(i)=tmp6(1,4);
    Y3(i)=tmp6(2,4);
    Z3(i)=tmp6(3,4);
    
    tmp7=HTM(L,[theta4;phi4(i)],xi(i));
    %tmp8=tmp6*tmp7; %
    tmp8=tmp6*Rz(3*pi/3)*tmp7;
    X4(i)=tmp8(1,4);
    Y4(i)=tmp8(2,4);
    Z4(i)=tmp8(3,4);
end

% plot3(X4,Y4,Z4,'LineWidth',2,'Color','b'); hold on;
%end

set(gca,'FontSize',16);set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
grid on;
axis equal;
%axis([-.5 .5 -.5 .5 0 .75])
% xlabel('X [m]');
% ylabel('Y [m]');
% zlabel('Z [m]');
hold off;



