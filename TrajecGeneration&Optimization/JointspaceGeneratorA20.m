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
       a1 =    0.003468;
       b1 =       2.513;
       c1 =    -0.07387;
       a2 =    0.001893;
       b2 =       7.227;
       c2 =       2.813;
l1=a1*sin(H*b1*t+c1)+a2;
% l1=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l1=l1';


%%%%%%%%%%% y2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.004355;
       b1 =       3.255;
       c1 =     -0.1286;
       a2 =    0.004976;
       b2 =       5.857;
       c2 =       1.685;
l2=a1*sin(H*b1*t+c1)+a2;
% l2=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l2=l2';

%%%%%%%%%% y3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.004351;
       b1 =       3.365;
       c1 =      0.3549;
       a2 =   0.0008715;
       b2 =        17.5;
       c2 =      -1.669;

l3=a1*sin(H*b1*t+c1)+a2;
% l3=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l3=l3';

%%%%%%%%%%%% y4 %%%%%%%%%%%%%%%%%%%%%%%%%%%

       a1 =    0.005126;
       b1 =       3.371;
       c1 =     -0.5234;
       a2 =    0.001066;
       b2 =       17.47;
       c2 =      0.1629;
l4=a1*sin(H*b1*t+c1)+a2;
% l4=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l4=l4';


%%%%%%%%%%%%%% y5 %%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.004562;
       b1 =       3.229;
       c1 =     0.06006;
       a2 =    0.005444;
       b2 =       6.247;
       c2 =        1.78;

l5=a1*sin(H*b1*t+c1)+a2;
% l5=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l5=l5';

%%%%%%%%%%%% y6 %%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.004015;
       b1 =       2.508;
       c1 =       0.713;
       a2 =    0.002301;
       b2 =       7.072;
       c2 =       5.869;
l6=a1*sin(H*b1*t+c1)+a2;
% l6=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l6=l6';

%%%%%%%%%%%% y7 %%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.004706;
       b1 =       3.609;
       c1 =     -0.5176;
       a2 =   0.0009304;
       b2 =       18.11;
       c2 =      0.1988;
       
l7=a1*sin(H*b1*t+c1)+a2;
% l7=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l7=l7';

%%%%%%%%%%%% y8 %%%%%%%%%%%%%%%%%%%%%
       a1 =    0.005005;
       b1 =       3.173;
       c1 =      0.2358;
       a2 =    0.005651;
       b2 =        5.61;
       c2 =       2.315;

l8=a1*sin(H*b1*t+c1)+a2;
% l8=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l8=l8';

%%%%%%%%%% y9 %%%%%%%%%%%%%%%%%
       a1 =    0.003338;
       b1 =       2.646;
       c1 =      0.4067;
       a2 =    0.002625;
       b2 =       6.133;
       c2 =      0.3228;

l9=a1*sin(H*b1*t+c1)+a2;
% l9=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l9=l9';

%%%%%%%%%%%%%%% y10 %%%%%%%%%%%%%%
       a1 =    0.002802;
       b1 =       3.081;
       c1 =     -0.2202;
       a2 =    0.001365;
       b2 =       8.064;
       c2 =       2.582;
       

l10=a1*sin(H*b1*t+c1)+a2;
% l10=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l10=l10';

%%%%%%%%%%%%%%% y11 %%%%%%%%%%%%%%%

       a1 =    0.003721;
       b1 =       2.769;
       c1 =      0.3944;
       a2 =     0.00418;
       b2 =       5.049;
       c2 =       2.457;
       
l11=a1*sin(H*b1*t+c1)+a2;
% l11=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l11=l11';


%%%%%%%%%%%%%%% y12 %%%%%%%%%%%%%%%%%%
       a1 =    0.002896;
       b1 =       2.844;
       c1 =      0.7843;
       a2 =    0.001262;
       b2 =        8.81;
       c2 =       5.228;
          
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


