function lVec=Spatial3DrollingTrajGen()
n=50; % # of trajs
np=100; % # points on curve
r=.3501; % rolling radius
phi=pi; % angle of curve
phiVec=linspace(0,phi,np);
t=linspace(0,2*pi,n+1);
t(end)=[];

xC=zeros(np,3); % curve point vect at t=0;
lVec=zeros(n,12);

% for i=1:np
%     xC(i,:)=[r,0,0]+[-r*cos(phiVec(i)),0,r*sin(phiVec(i))];
% end

xC1=forwardKin4SectionSnake();

xC=xC1;

lmax=.075;
LB=zeros(1,12);
UB=lmax*ones(1,12);
x0=0*rand(1,12);

opts = optimoptions(@fmincon,'Algorithm','interior-point');

clf;

hold on;
for i=1:n
    xCt=xC*[cos(t(i)) -sin(t(i)) 0;sin(t(i)) cos(t(i)) 0; 0 0 1]; % Rz=[cos(t(i)) -sin(t(i)) 0;sin(t(i)) cos(t(i)) 0; 0 0 1]
    problem = createOptimProblem('fmincon','objective',...
        @(q) myCostFn(xCt,q),'x0',x0,'lb',LB,'ub',UB,'options',opts);
    gs = GlobalSearch;
    [x,~] = run(gs,problem);
    lVec(i,:)=x;
    
    % draw
    pss=f20200229_4_snakePoints_1(lVec(i,:),30);
    plot3(pss(:,1),pss(:,2),pss(:,3),'linewidth',3)
    plot3(xCt(:,1),xCt(:,2),xCt(:,3),'b');
    
end

hold off
%xlabel('X (m)'); ylabel('Y (m)'); zlabel('Z (m)'); 
xticks(-0.8:0.4:0.8);xlim([-0.8 0.8]);
yticks(-0.8:0.4:0.8); ylim([-0.8 0.8]) ;
zticks(0:0.2:0.8);
grid on;
set(gca,'FontSize',18); set(gca,'xcolor','k'); %set(gca,'FontWeight','bold');
%view(60,15)
axis equal;
%print('plot1','-dsvg','-r600');

    function z=myCostFn(pa,q)
        [m,~]=size(pa);
        N=15;
        z=0;
        ps=f20200229_4_snakePoints_1(q,N);
        for j=1:N
            tmp=pa-ones(m,1)*ps(j,:);
            tmp=sqrt(sum(tmp.^2,2));
            z=z+min(tmp);
        end
    end
end

