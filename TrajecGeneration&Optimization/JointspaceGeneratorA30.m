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
       a1 =    0.005053 ;
       b1 =       2.475;
       c1 =     -0.1022;
       a2 =    0.002653;
       b2 =       7.348;
       c2 =       2.739;
l1=a1*sin(H*b1*t+c1);
% l1=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l1=l1';


%%%%%%%%%%% y2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.007286;
       b1 =       3.369;
       c1 =     -0.2077;
       a2 =    0.008149;
       b2 =       5.684;
       c2 =       1.746;
l2=a1*sin(H*b1*t+c1);
% l2=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l2=l2';

%%%%%%%%%% y3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.006279;
       b1 =        3.38;
       c1 =      0.3414;
       a2 =    0.001262;
       b2 =       17.51;
       c2 =      -1.694;

l3=a1*sin(H*b1*t+c1);
% l3=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l3=l3';

%%%%%%%%%%%% y4 %%%%%%%%%%%%%%%%%%%%%%%%%%%

       a1 =    0.007273;
       b1 =       3.266;
       c1 =     -0.5164;
       a2 =    0.001466;
       b2 =       17.58;
       c2 =    -0.04921;
l4=a1*sin(H*b1*t+c1);
% l4=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l4=l4';


%%%%%%%%%%%%%% y5 %%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.007108;
       b1 =       3.312;
       c1 =   -0.008522;
       a2 =     0.00828;
       b2 =       6.092;
       c2 =       1.795;

l5=a1*sin(H*b1*t+c1);
% l5=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l5=l5';

%%%%%%%%%%%% y6 %%%%%%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.005696;
       b1 =       2.663;
       c1 =      0.4799;
       a2 =    0.003659;
       b2 =       6.709;
       c2 =       6.041;
l6=a1*sin(H*b1*t+c1);
% l6=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l6=l6';

%%%%%%%%%%%% y7 %%%%%%%%%%%%%%%%%%%%%%%
       a1 =    0.006664;
       b1 =       3.491;
       c1 =     -0.5281;
       a2 =    0.001352;
       b2 =       17.48;
       c2 =      0.2388;
       
l7=a1*sin(H*b1*t+c1);
% l7=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l7=l7';

%%%%%%%%%%%% y8 %%%%%%%%%%%%%%%%%%%%%
       a1 =    0.007684;
       b1 =       3.356;
       c1 =     0.06465;
       a2 =    0.008627;
       b2 =       5.653;
       c2 =        2.17;

l8=a1*sin(H*b1*t+c1);
% l8=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l8=l8';

%%%%%%%%%% y9 %%%%%%%%%%%%%%%%%
       a1 =    0.005579;
       b1 =       3.086;
       c1 =      0.2276 ;
       a2 =    0.003627;
       b2 =       6.405;
       c2 =      0.3024;
l9=a1*sin(H*b1*t+c1);
% l9=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l9=l9';

%%%%%%%%%%%%%%% y10 %%%%%%%%%%%%%%
       a1 =    0.004222;
       b1 =       3.098;
       c1 =      -0.229;
       a2 =    0.002193;
       b2 =       7.676;
       c2 =       2.589;
       

l10=a1*sin(H*b1*t+c1);
% l10=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l10=l10';

%%%%%%%%%%%%%%% y11 %%%%%%%%%%%%%%%

       a1 =     0.00623;
       b1 =       2.928;
       c1 =      0.2466;
       a2 =    0.006865;
       b2 =           5 ;
       c2 =       2.375 ;
       
l11=a1*sin(H*b1*t+c1);
% l11=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l11=l11';


%%%%%%%%%%%%%%% y12 %%%%%%%%%%%%%%%%%%
       a1 =     0.00436;
       b1 =       2.969;
       c1 =      0.6037;
       a2 =    0.001948;
       b2 =       8.432 ;
       c2 =       5.306;
          
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


