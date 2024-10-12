% function [simin,lvecT]=sidewindingSiminGenerator(lVec,A,f,N)
N=1; f=1;A=1;

close all;

n=length(lVec(:,1));
t=linspace(0,1,n+1);
 %t(end)=[];
% y1=lVec(:,1);

H=1;
%y1
       a1 =    0.006419;
       b1 =       2.408;
       c1 =     -0.1169;
       a2 =    0.003286;
       b2 =       7.439;
       c2 =       2.678;
l1=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l1=l1';


%y2
       a1 =    0.009087;
       b1 =       3.325;
       c1 =     -0.2038;
       a2 =     0.01015;
       b2 =       5.669;
       c2 =       1.726;
l2=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l2=l2';

%y3
       a1 =    0.007005;
       b1 =       2.579;
       c1 =   -0.009158;
       a2 =    0.006494;
       b2 =       5.873;
       c2 =       6.445;
%        a1 =    0.007105;
%        b1 =       2.679;
%        c1 =   -0.009258;
%        a2 =    0.006594;
%        b2 =       5.793;
%        c2 =       6.445;
       

l3=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l3=l3';

%y4

       a1 =    0.006978;
       b1 =       2.614;
       c1 =      0.1249;
       a2 =     0.00479;
       b2 =       6.596;
       c2 =        3.18;
l4=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l4=l4';


%y5
       a1 =     0.00923;
       b1 =       3.344;
       c1 =    -0.09656;
       a2 =     0.01066;
       b2 =       6.027 ;
       c2 =        1.72;

l5=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l5=l5';

%y6
       a1 =    0.007105;
       b1 =       2.679;
       c1 =   -0.009258;
       a2 =    0.006594;
       b2 =       5.793;
       c2 =       6.445;
l6=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l6=l6';

%y7
       a1 =    0.006182;
       b1 =       2.502;
       c1 =       0.162;
       a2 =     0.00423;
       b2 =        6.85;
       c2 =       3.223;
l7=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l7=l7';

%y8
      a1 =    0.009646;
       b1 =       3.394;
       c1 =    -0.07024;
       a2 =     0.01081;
       b2 =       5.681;
       c2 =       1.988;

l8=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l8=l8';

%y9
       a1 =    0.007164;
       b1 =       3.164;
       c1 =     0.06145;
       a2 =    0.004876;
       b2 =       6.292;
       c2 =       0.224;

l9=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l9=l9';

%y10
       a1 =    0.005538;
       b1 =       3.046;
       c1 =     -0.3333;
       a2 =    0.002748;
       b2 =       7.729;
       c2 =       2.337;
       

l10=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l10=l10';

%y11

       a1 =     0.00761;
       b1 =       3.094;
       c1 =     0.01847;
       a2 =    0.008493;
       b2 =       5.278;
       c2 =       2.037;
       
%               a1 =    0.006978;
%        b1 =       2.614;
%        c1 =      0.1249;
%        a2 =     0.00479;
%        b2 =       6.596;
%        c2 =        3.18;
l11=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l11=l11';


%y12
       a1 =    0.006336;
       b1 =       2.928;
       c1 =      0.5064;
       a2 =    0.003191;
       b2 =       7.587;
       c2 =       5.502;
          
%               a1 =    0.007105;
%        b1 =       2.679;
%        c1 =   -0.009258;
%        a2 =    0.006594;
%        b2 =       5.793;
%        c2 =       6.445;
l12=a1*sin(H*b1*t+c1)+a2*sin(H*b2*t+c2);
l12=l12';

L_vec=3.5*[l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12];
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


