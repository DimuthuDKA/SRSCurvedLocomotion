close all;

%%%%%%%%%%%%%%% Section 1 %%%%%%%%%%%%
%%%%%%%%%%%% a_ji %%%%%
p_a11=polyfit(A,a11,2);
x_a11 = linspace(0.1,0.4,20);
y_a11 = polyval(p_a11,x_a11);
figure;
plot(A,a11,'o','MarkerSize',16,'LineWidth',3.5); hold on;
plot(x_a11,y_a11,'LineWidth',4.5);


p_a12=polyfit(A,a12,2);
x_a12 = linspace(0.1,0.4,20);
y_a12 = polyval(p_a12,x_a12);
plot(A,a12,'^','MarkerSize',14,'LineWidth',3.5);
plot(x_a12,y_a12,'LineWidth',4.5);


p_a13=polyfit(A,a13,2);
x_a13 = linspace(0.1,0.4,20);
y_a13 = polyval(p_a13,x_a13);
plot(A,a13,'s','MarkerSize',18,'LineWidth',4);
plot(x_a13,y_a13,'LineWidth',4.5);xticks(0.1:0.05:0.4); 
set(gca,'FontSize',20);set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
hold off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% b_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p_b11=polyfit(A,b11,2);
x_b11 = linspace(0.1,0.4,20);
y_b11 = polyval(p_b11,x_b11);
figure;
plot(A,b11,'o','MarkerSize',16,'LineWidth',3.5); hold on;
plot(x_b11,y_b11,'LineWidth',4.5);


p_b12=polyfit(A,b12,2);
x_b12 = linspace(0.1,0.4,20);
y_b12 = polyval(p_b12,x_b12);
plot(A,b12,'^','MarkerSize',14,'LineWidth',3.5);
plot(x_b12,y_b12,'LineWidth',4.5);


p_b13=polyfit(A,b13,2);
x_b13 = linspace(0.1,0.4,20);
y_b13 = polyval(p_b13,x_b13);
plot(A,b13,'s','MarkerSize',18,'LineWidth',4);
plot(x_b13,y_b13,'LineWidth',4.5);
set(gca,'FontSize',20);set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
ylim([9 15]);xticks(0.1:0.05:0.4); 
hold off;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%% c_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%


p_c11=polyfit(A,c11,2);
x_c11 = linspace(0.1,0.4,20);
y_c11 = polyval(p_c11,x_c11);
figure;
plot(A,c11,'o','MarkerSize',16,'LineWidth',3.5); hold on;
plot(x_c11,y_c11,'LineWidth',4.5);


p_c12=polyfit(A,c12,2);
x_c12 = linspace(0.1,0.4,20);
y_c12 = polyval(p_c12,x_c12);
plot(A,c12,'^','MarkerSize',14,'LineWidth',3.5);
plot(x_c12,y_c12,'LineWidth',4.5);


p_c13=polyfit(A,c13,2);
x_c13 = linspace(0.1,0.4,20);
y_c13 = polyval(p_c13,x_c13);
plot(A,c13,'s','MarkerSize',18,'LineWidth',4);
plot(x_c13,y_c13,'LineWidth',4.5);
set(gca,'FontSize',20);set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
ylim([-1 2]); yticks(-1:0.5:2); xticks(0.1:0.05:0.4); 

hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%% d_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


p_d11=polyfit(A,d11,2);
x_d11 = linspace(0.1,0.4,20);
y_d11 = polyval(p_d11,x_d11);
figure;
plot(A,d11,'o','MarkerSize',16,'LineWidth',3.5); hold on;
plot(x_d11,y_d11,'LineWidth',4.5);


p_d12=polyfit(A,d12,2);
x_d12 = linspace(0.1,0.4,20);
y_d12 = polyval(p_d12,x_d12);
plot(A,d12,'^','MarkerSize',14,'LineWidth',3.5);
plot(x_d12,y_d12,'LineWidth',4.5);


p_d13=polyfit(A,d13,2);
x_d13 = linspace(0.1,0.4,20);
y_d13 = polyval(p_d13,x_d13);
plot(A,d13,'s','MarkerSize',18,'LineWidth',4);
plot(x_d13,y_d13,'LineWidth',4.5);
set(gca,'FontSize',20);set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
xticks(0.1:0.05:0.4); 
hold off;


%%%%%%%%%%%%%%% Section 2 %%%%%%%%%%%%

%%%%%%%%%%%% a_ji %%%%%
p_a21=polyfit(A,a21,2);
p_a22=polyfit(A,a22,2);
p_a23=polyfit(A,a23,2);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% b_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p_b21=polyfit(A,b21,2);
p_b22=polyfit(A,b22,2);
p_b23=polyfit(A,b23,2);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% c_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p_c21=polyfit(A,c21,2);
p_c22=polyfit(A,c22,2);
p_c23=polyfit(A,c23,2);

% %%%%%%%%%%%%%%%%%%%%%%%%%% d_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p_d21=polyfit(A,d21,2);
p_d22=polyfit(A,d22,2);
p_d23=polyfit(A,d23,2);

%%%%%%%%%%%%%%% Section 3 %%%%%%%%%%%%

%%%%%%%%%%%% a_ji %%%%%
p_a31=polyfit(A,a31,2);
p_a32=polyfit(A,a32,2);
p_a33=polyfit(A,a33,2);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% b_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p_b31=polyfit(A,b31,2);
p_b32=polyfit(A,b32,2);
p_b33=polyfit(A,b33,2);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% c_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p_c31=polyfit(A,c31,2);
p_c32=polyfit(A,c32,2);
p_c33=polyfit(A,c33,2);

% %%%%%%%%%%%%%%%%%%%%%%%%%% d_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p_d31=polyfit(A,d31,2);
p_d32=polyfit(A,d32,2);
p_d33=polyfit(A,d33,2);

%%%%%%%%%%%%%%% Section 4 %%%%%%%%%%%%

%%%%%%%%%%%% a_ji %%%%%
p_a41=polyfit(A,a41,2);
p_a42=polyfit(A,a42,2);
p_a43=polyfit(A,a43,2);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% b_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p_b41=polyfit(A,b41,2);
p_b42=polyfit(A,b42,2);
p_b43=polyfit(A,b43,2);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%% c_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p_c41=polyfit(A,c41,2);
p_c42=polyfit(A,c42,2);
p_c43=polyfit(A,c43,2);

% %%%%%%%%%%%%%%%%%%%%%%%%%% d_ji %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p_d41=polyfit(A,d41,2);
p_d42=polyfit(A,d42,2);
p_d43=polyfit(A,d43,2);


