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
       a1 =    0.002629;
       b1 =       2.527 ;
       c1 =    -0.07746;
       a2 =    0.001439 ;
       b2 =        7.22 ;
       c2 =       2.823;
l1=a1*sin(H*b1*t+c1)+a2;
% l1=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l1=l1';


%%%%%%%%%%% y2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.003318;
       b1 =       3.266;
       c1 =      -0.127;
       a2 =    0.003793;
       b2 =       5.858;
       c2 =       1.695;
l2=a1*sin(H*b1*t+c1)+a2;
% l2=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l2=l2';

%%%%%%%%%% y3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =      0.0033;
       b1 =        3.36;
       c1 =       0.355;
        a2 =    0.000634;
       b2 =       17.24;
       c2 =      -1.558;

l3=a1*sin(H*b1*t+c1)+a2;
% l3=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l3=l3';

%%%%%%%%%%%% y4 %%%%%%%%%%%%%%%%%%%%%%%%%%%

       a1 =    0.003889;
       b1 =       3.404;
       c1 =     -0.5233;
       a2 =   0.0008128;
       b2 =        17.5;
       c2 =       0.194;
l4=a1*sin(H*b1*t+c1)+a2;
% l4=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l4=l4';


%%%%%%%%%%%%%% y5 %%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.004296;
       b1 =       3.358;
       c1 =     0.04796;
       a2 =    0.004873;
       b2 =       5.786;
       c2 =        2.05;

l5=a1*sin(H*b1*t+c1)+a2;
% l5=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l5=l5';

%%%%%%%%%%%% y6 %%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.003073;
       b1 =       2.457;
       c1 =      0.7965;
       a2 =    0.001677;
       b2 =       7.229;
       c2 =       5.797;
l6=a1*sin(H*b1*t+c1)+a2;
% l6=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l6=l6';

%%%%%%%%%%%% y7 %%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.003582;
       b1 =       3.639;
       c1 =     -0.5126;
       a2 =   0.0007127;
       b2 =        18.2;
       c2 =      0.2482;
l7=a1*sin(H*b1*t+c1)+a2;
% l7=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l7=l7';

%%%%%%%%%%%% y8 %%%%%%%%%%%%%%%%%%%%%
       a1 =    0.003766;
       b1 =       3.124;
       c1 =      0.2843;
       a2 =    0.004253;
       b2 =       5.576;
       c2 =       2.366;

l8=a1*sin(H*b1*t+c1)+a2;
% l8=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l8=l8';

%%%%%%%%%% y9 %%%%%%%%%%%%%%%%%
       a1 =    0.002497;
       b1 =       2.605;
       c1 =      0.4006;
       a2 =    0.002055;
       b2 =       6.025;
       c2 =      0.3874;

l9=a1*sin(H*b1*t+c1)+a2;
% l9=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l9=l9';

%%%%%%%%%%%%%%% y10 %%%%%%%%%%%%%%
       a1 =     0.00204;
       b1 =       3.054;
       c1 =      -0.197;
       a2 =    0.001016;
       b2 =       8.074;
       c2 =       2.628;
       

l10=a1*sin(H*b1*t+c1)+a2;
% l10=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l10=l10';

%%%%%%%%%%%%%%% y11 %%%%%%%%%%%%%%%

       a1 =    0.002551;
       b1 =       2.827;
       c1 =      0.3806;
       a2 =    0.002898;
       b2 =       5.239;
       c2 =       2.398;
       
l11=a1*sin(H*b1*t+c1)+a2;
% l11=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l11=l11';


%%%%%%%%%%%%%%% y12 %%%%%%%%%%%%%%%%%%
       a1 =    0.002074;
       b1 =       2.821;
       c1 =      0.8046;
       a2 =   0.0009116;
       b2 =       8.704;
       c2 =       5.304;
          
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


