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
       a1 =    0.004271;
       b1 =       2.488;
       c1 =    -0.08265;
       a2 =    0.002297;
       b2 =       7.273;
       c2 =       2.786;
l1=a1*sin(H*b1*t+c1);
% l1=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l1=l1';


%%%%%%%%%%% y2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.006247;
       b1 =       3.388;
       c1 =     -0.2085;
       a2 =    0.006992;
       b2 =        5.69;
       c2 =       1.756;
l2=a1*sin(H*b1*t+c1);
% l2=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l2=l2';

%%%%%%%%%% y3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.005342;
       b1 =       3.371;
       c1 =      0.3495;
       a2 =    0.001075;
       b2 =        17.5;
       c2 =      -1.669;
       

l3=a1*sin(H*b1*t+c1);
% l3=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l3=l3';

%%%%%%%%%%%% y4 %%%%%%%%%%%%%%%%%%%%%%%%%%%

       a1 =    0.006237;
       b1 =       3.326;
       c1 =     -0.5231;
       a2 =    0.001282;
       b2 =       17.64;
       c2 =   -0.004478;
l4=a1*sin(H*b1*t+c1);
% l4=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l4=l4';


%%%%%%%%%%%%%% y5 %%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.006018;
       b1 =       3.294;
       c1 =      0.0194;
       a2 =    0.007031;
       b2 =       6.095;
       c2 =       1.828;

l5=a1*sin(H*b1*t+c1);
% l5=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l5=l5';

%%%%%%%%%%%% y6 %%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.004923;
       b1 =       2.607;
       c1 =      0.6044;
       a2 =    0.002908;
       b2 =        6.95;
       c2 =       5.936;
l6=a1*sin(H*b1*t+c1);
% l6=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l6=l6';

%%%%%%%%%%%% y7 %%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.005748;
       b1 =       3.553;
       c1 =     -0.5218;
       a2 =    0.001135;
       b2 =       17.98;
       c2 =      0.1282;
l7=a1*sin(H*b1*t+c1);
% l7=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l7=l7';

%%%%%%%%%%%% y8 %%%%%%%%%%%%%%%%%%%%%
       a1 =     0.00638;
       b1 =        3.26;
       c1 =      0.1572;
       a2 =     0.00717;
       b2 =        5.63;
       c2 =       2.249;

l8=a1*sin(H*b1*t+c1);
% l8=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l8=l8';

%%%%%%%%%% y9 %%%%%%%%%%%%%%%%%
       a1 =    0.004216;
       b1 =       2.626;
       c1 =      0.4881;
       a2 =    0.003072;
       b2 =       6.368;
       c2 =      0.1532;
l9=a1*sin(H*b1*t+c1);
% l9=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l9=l9';

%%%%%%%%%%%%%%% y10 %%%%%%%%%%%%%%
       a1 =    0.003473;
       b1 =       2.979;
       c1 =     -0.1193;
       a2 =    0.001926;
       b2 =       7.559;
       c2 =       2.802;
       

l10=a1*sin(H*b1*t+c1);
% l10=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l10=l10';

%%%%%%%%%%%%%%% y11 %%%%%%%%%%%%%%%

       a1 =    0.005023;
       b1 =       3.009;
       c1 =      0.2578;
       a2 =     0.00562;
       b2 =       5.186;
       c2 =       2.359;
       
l11=a1*sin(H*b1*t+c1);
% l11=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l11=l11';


%%%%%%%%%%%%%%% y12 %%%%%%%%%%%%%%%%%%
       a1 =    0.003585 ;
       b1 =       2.963 ;
       c1 =       0.591;
       a2 =    0.001695 ;
       b2 =       8.026 ;
       c2 =       5.607;
          
l12=a1*sin(H*b1*t+c1);
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


