% function [simin,lvecT]=sidewindingSiminGenerator(lVec,A,f,N)

% n=length(lVec(:,1));
% t=linspace(0,1,n+1);
% t(end)=[];
% cftool
% y1=lVec(:,1);
% y2=lVec(:,2);
% y3=lVec(:,3);
% y4=lVec(:,4);
% y5=lVec(:,5);
% y6=lVec(:,6);
% y7=lVec(:,7);
% y8=lVec(:,8);
% y9=lVec(:,9);
% y10=lVec(:,10);
% y11=lVec(:,11);
% y12=lVec(:,12);



N=1; f=1;A=1;

close all;

n=length(lVec(:,1));
t=linspace(0,1,n+1);
 %t(end)=[];
% y1=lVec(:,1);

H=1;
%%%%%%%%%%% y1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.001818;
       b1 =       2.575;
       c1 =     -0.1796;
       a2 =   0.0008717;
       b2 =       7.299;
       c2 =       2.806;
l1=a1*sin(H*b1*t+c1)+a2;
% l1=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l1=l1';


%%%%%%%%%%% y2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.002237;
       b1 =       3.263;
       c1 =     -0.1198;
       a2 =    0.002557;
       b2 =       5.857;
       c2 =       1.705;
l2=a1*sin(H*b1*t+c1)+a2;
% l2=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l2=l2';

%%%%%%%%%% y3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.002222;
       b1 =        3.35;
       c1 =      0.3634;
       a2 =   0.0004254;
       b2 =       17.24;
       c2 =      -1.547;

l3=a1*sin(H*b1*t+c1)+a2;
% l3=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l3=l3';

%%%%%%%%%%%% y4 %%%%%%%%%%%%%%%%%%%%%%%%%%%

       a1 =    0.002608;
       b1 =        3.43;
       c1 =     -0.5224;
       a2 =   0.0005358;
       b2 =       17.64;
       c2 =      0.1476;
l4=a1*sin(H*b1*t+c1)+a2;
% l4=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l4=l4';


%%%%%%%%%%%%%% y5 %%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.002862;
       b1 =        3.35;
       c1 =     0.06418;
       a2 =    0.003246;
       b2 =       5.789;
       c2 =       2.069;

l5=a1*sin(H*b1*t+c1)+a2;
% l5=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l5=l5';

%%%%%%%%%%%% y6 %%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.002155;
       b1 =       3.034;
       c1 =      0.2128;
       a2 =    0.001412;
       b2 =       6.396;
       c2 =         0.2;
l6=a1*sin(H*b1*t+c1)+a2;
% l6=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l6=l6';

%%%%%%%%%%%% y7 %%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.002394;
       b1 =       3.659;
       c1 =     -0.5089;
       a2 =    0.000471;
       b2 =       18.44;
       c2 =        0.17;
       
l7=a1*sin(H*b1*t+c1)+a2;
% l7=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l7=l7';

%%%%%%%%%%%% y8 %%%%%%%%%%%%%%%%%%%%%
       a1 =    0.002216;
       b1 =       3.071;
       c1 =      0.2705;
       a2 =    0.002553;
       b2 =       5.756;
       c2 =       2.277;

l8=a1*sin(H*b1*t+c1)+a2;
% l8=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l8=l8';

%%%%%%%%%% y9 %%%%%%%%%%%%%%%%%
       a1 =     0.00168;
       b1 =       2.629;
       c1 =      0.3628;
       a2 =    0.001424;
       b2 =       5.955;
       c2 =      0.4536;

l9=a1*sin(H*b1*t+c1)+a2;
% l9=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l9=l9';

%%%%%%%%%%%%%%% y10 %%%%%%%%%%%%%%
       a1 =    0.001295;
       b1 =       3.085;
       c1 =     -0.2429;
       a2 =    0.000627;
       b2 =       8.301;
       c2 =       2.524;
       

l10=a1*sin(H*b1*t+c1)+a2;
% l10=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l10=l10';

%%%%%%%%%%%%%%% y11 %%%%%%%%%%%%%%%

       a1 =    0.001425;
       b1 =       2.805;
       c1 =      0.3709;
       a2 =    0.001647;
       b2 =       5.339;
       c2 =       2.337;
       
l11=a1*sin(H*b1*t+c1)+a2;
% l11=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l11=l11';


%%%%%%%%%%%%%%% y12 %%%%%%%%%%%%%%%%%%
       a1 =    0.001313;
       b1 =       2.849;
       c1 =      0.7917;
       a2 =     0.00058;
       b2 =        8.74;
       c2 =       5.315;
          
l12=a1*sin(H*b1*t+c1)+a2;
% l12=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l12=l12';

L_vec=4*[l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12];


for i=1:n
    tmp=[l1(i,1) l2(i,1) l3(i,1)];
    l1_vec(i,:)=tmp-min(tmp);
    
    tmp=[l4(i,1) l5(i,1) l6(i,1)];
    l2_vec(i,:)=tmp-min(tmp);
    
    tmp=[l7(i,1) l8(i,1) l9(i,1)];
    l3_vec(i,:)=tmp-min(tmp);
    
    tmp=[l10(i,1) l11(i,1) l12(i,1)];
    l4_vec(i,:)=tmp-min(tmp);
end


l1_vecT=A*l1_vec/max(max(l1_vec));
l2_vecT=A*l2_vec/max(max(l2_vec));
l3_vecT=A*l3_vec/max(max(l3_vec));
l4_vecT=A*l4_vec/max(max(l4_vec));
%
% %
lvecT1=4*[l1_vec l2_vec l3_vec l4_vec];
lvecT=[l1_vecT l2_vecT l3_vecT l4_vecT];
cm = parula(12);
randColor = rand(12,3);
%lvecT=[l4_vecT l3_vecT l2_vecT l1_vecT];
figure
hold on;
for i=1:12
     plot(t,L_vec(:,i),'Color', randColor(i,:),'LineWidth',2.5);
end

% for i=1:12
%      plot(t,lvecT1(:,i),'Color', randColor(i,:),'LineWidth',2.5);
% end
% plot(l2);plot(l3); plot(l2);plot(l3); plot(l2);plot(l3); plot(l2);plot(l3); plot(l2);plot(l3); hold off;

set(gca,'FontSize',18);set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
xlim([0 1])
xticks([0:0.2:1]); grid on;
ylim([-0.01 0.05]);yticks([-0.01:0.01:0.05]);
lgd=legend({'\it l_{11}','\it l_{12}','\it l_{13}','\it l_{21}','\it l_{22}','\it l_{23}','\it l_{31}','\it l_{32}','\it l_{33}','\it l_{41}','\it l_{42}','\it l_{43}'},'NumColumns',4);
set(lgd, 'FontSize', 10)


