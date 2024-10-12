%function [fvals,lVec]=f20220211_4_sinusoidal_gs_5()

close all;

% sinusoidal params
np=100;
% amp=.15; % amp
%f=1; % freq

%
Aa=0.3;
% 
%minf=min([fa fb]);

%t=linspace(0,3/minf,np)'; % # patten points
t=linspace(0,2*pi,np);

% how many sample points in a period
n=61; % # of trajs
nT=1.0; % # times to do the same fit
ttraj=linspace(0,2*pi,n+1);
ttraj(end)=[];

lVec=zeros(n,12);
fvals=zeros(n,1);
trajP=zeros(np,4*n);

lmax=.1;
LB=zeros(1,12);
UB=lmax*ones(1,12);

opts = optimoptions(@fmincon,'Algorithm','interior-point');

for i=1:n
    xCt=zeros(np,3);
    
    dw=1e-3*ttraj(2);
    
    tx=ttraj(i);
    ty=Aa*cos(tx);
    tz=Aa*sin(tx);
    
    dx = 2*dw;
    dy=Aa*cos(tx+dw)-Aa*cos(tx-dw);
    dz=Aa*sin(tx+dw)-Aa*sin(tx-dw);
    
%         dx = 2*pi*dw;
%     dy=Aa*sin((tx+dw))-Aa*sin(2*pi*fa*(tx-dw));
%     dz=Ab*sin(2*pi*fb*(tx+dw)+b)-Ab*sin(2*pi*fb*(tx-dw)+b);
    
    %     ez=[dx;dy;dz];
    %     ez=ez/norm(ez);
    
    theta = atan2(dy,dx);
    phi = atan2(dz,norm([dx,dy]))-pi/2;
    
    htm=[1 0 0 tx;0 1 0 ty;0 0 1 tz;0 0 0 1]...
        *[cos(theta) -sin(theta) 0 0;sin(theta) cos(theta) 0 0; 0 0 1 0; 0 0 0 1]...
        *[cos(phi) 0 sin(phi) 0; 0 1 0 0; -sin(phi) 0 cos(phi) 0; 0 0 0 1]';
    
    %     % coord trans
    %     beta=atan2( amp*sin(2*pi*f*(ttraj(i)+ttraj(end)/1000))- amp*sin(2*pi*f*(ttraj(i)-ttraj(end)/1000)),...
    %         ttraj(end)/500)-pi/2;
    %     htm=[[cos(beta) 0 -sin(beta);0 1 0; sin(beta) 0 cos(beta)] [ttraj(i);0;amp*sin(2*pi*f*ttraj(i))];0 0 0 1];
    
    for k=1:np
        tm=htm\[t(k)+ttraj(i);...
            Aa*cos((t(k)+ttraj(i)));...
            Aa*sin((t(k)+ttraj(i)));...
            1];
        xCt(k,:)=tm(1:3);
    end
    
    trajP(:,3*(i-1)+1:3*i)=0.125*xCt;
end

% x=lmax*rand(1,12);

for i=1:n
    disp(strcat(num2str(round(100*(i/n),0)),'%'));
    
    for k=1:nT
        x0=lmax*rand(1,12);
        problem = createOptimProblem('fmincon','objective',...
            @(q) myCostFn(trajP(:,3*(i-1)+1:3*i),q),'x0',x0,'lb',LB,'ub',UB,'options',opts);
        gs = GlobalSearch;
        [x,f] = run(gs,problem);
        fvals(i)=fvals(i)+f;
        lVec(i,:)=lVec(i,:)+x;
    end
end

lVec=lVec/nT;
fvals=fvals/nT;
%     draw
hold on;
for i=1:n
    pss=f20220211_3_snakePoints_2(lVec(i,:),12);
    plot3(pss(:,1),pss(:,2),pss(:,3),'linewidth',3)
    plot3(trajP(:,3*(i-1)+1),trajP(:,3*(i-1)+2),trajP(:,3*(i-1)+3),'color',[0.0118 0.5098 0.0431]);
end
hold off
axis equal; grid on;
set(gca,'FontSize',15); set(gca,'xcolor','k');set(gca,'ycolor','k');set(gca,'zcolor','k');
xticks(-0.3:0.1:0.3);xlim([-0.3 0.3]);
yticks(-0.3:0.1:0.3);ylim([-0.3 0.3]) ;
zticks(0:0.2:1.2);
% axis([-.3 .3 -.5 .5 0 .75])

    function z=myCostFn(pa,q)
        [m,~]=size(pa);
        N=60;
        z=0;
        ps=f20220211_3_snakePoints_2(q,N);
        for j=1:N
            tmp=pa-ones(m,1)*ps(j,:);
            tmp=sqrt(sum(tmp.^2,2));
            z=z+min(tmp);
        end
        z=z/N+rms(q);
    end
%end

