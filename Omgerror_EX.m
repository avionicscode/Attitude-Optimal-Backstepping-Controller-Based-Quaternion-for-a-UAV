% test for function deri
clc;clear ALL;close all;
[t,x]=ode45(@(t,x)Omgerror(x),[0 10],[0.8224 0.2226 0.4397 0.3604 0.2226 0.4397 0.1 0.2 0.3 3 -4 -5 6 1 0 0 0 1 0 0 0 1 1 0 0 0 1 0 0 0 1]);
     
%[t,x]=ode45(@(t,x)COmgerror(x),[0 10],[0.8224 0.2226 0.4397 0.3604 0.2226 0.4397 0.1 0.2 0.3 3 4 5 6 1 0 0 0 1 0 0 0 1 -0.9 -0.23 -0.4])
    
%--------------------------------------
%tt=0:10/(length(t)-1):10;
figure
a=subplot(4,1,1);
plot(x(:,1))
b=subplot(4,1,2);
plot(x(:,2))
c=subplot(4,1,3);
plot(x(:,3))
d=subplot(4,1,4);
plot(x(:,4))
title(a,'Qe_{0}');
title(b,'Qe_{1}');
title(c,'Qe_{2}');
title(d,'Qe_{3}');

figure
aa=subplot(3,1,1);
plot(x(:,5))
bb=subplot(3,1,2);
plot(x(:,6))
cc=subplot(3,1,3);
plot(x(:,7))
title(aa,'\omega_{aux1}');
title(bb,'\omega_{aux2}');
title(cc,'\omega_{aux3}');

figure
dd=subplot(3,1,1);
plot(x(:,8))
ee=subplot(3,1,2);
plot(x(:,9))
ff=subplot(3,1,3);
plot(x(:,10))
title(dd,'z1_{1}');
title(ee,'z1_{2}');
title(ff,'z1_{3}');

figure
gg=subplot(3,1,1);
plot(x(:,11))
hh=subplot(3,1,2);
plot(x(:,12))
ii=subplot(3,1,3);
plot(x(:,13))
title(gg,'l’erreur z2_{1}');
title(hh,'l’erreur z2_{2}');
title(ii,'l’erreur z2_{3}');


figure
subplot(3,3,1)
plot(x(:,14))
subplot(3,3,2)
plot(x(:,15))
subplot(3,3,3)
plot(x(:,16))
subplot(3,3,4)
plot(x(:,17))
subplot(3,3,5)
plot(x(:,18))
subplot(3,3,6)
plot(x(:,19))
subplot(3,3,7)
plot(x(:,20))
subplot(3,3,8)
plot(x(:,21))
subplot(3,3,9)
plot(x(:,22))


figure
subplot(3,3,1)
plot(x(:,23))
subplot(3,3,2)
plot(x(:,24))
subplot(3,3,3)
plot(x(:,25))
subplot(3,3,4)
plot(x(:,26))
subplot(3,3,5)
plot(x(:,27))
subplot(3,3,6)
plot(x(:,28))
subplot(3,3,7)
plot(x(:,29))
subplot(3,3,8)
plot(x(:,30))
subplot(3,3,9)
plot(x(:,31))

% figure
% xx=subplot(3,1,1);
% plot(x(:,23)+0.940)
% yy=subplot(3,1,2);
% plot(x(:,24)+ 0.271)
% zz=subplot(3,1,3);
% plot(x(:,25)+ 0.32)
% title(xx,'u_{1}');
% title(yy,'u_{2}');
% title(zz,'u_{3}');

% figure
% xx=subplot(3,1,1);
% plot(x(:,32))
% yy=subplot(3,1,2);
% plot(x(:,33))
% zz=subplot(3,1,3);
% plot(x(:,34))
% title(xx,'u_{1}');
% title(yy,'u_{2}');
% title(zz,'u_{3}');

% figure
% xx=subplot(3,1,1);
% plot(x(:,35))
% yy=subplot(3,1,2);
% plot(x(:,36))
% zz=subplot(3,1,3);
% plot(x(:,37))
% title(xx,'W_{1}');
% title(yy,'W_{2}');
% xlabel('les perturbations W')
% title(zz,'W_{3}');

%--------------------------------------------------------------------------
% Q0=0.8224;
% R1=0.1*eye(3,3);
% v=[0.0098,0.0098,0.0176];
% J=diag(v);
% %R2=0.03*eye(3,3);
% IR2=33.3333*eye(3,3);
% gamma= 150;
% Q1=eye(3,3);
% Q2=eye(3,3);
% B2=102.0408*eye(3,3);%equation(20)
% G2=102.0408*eye(3,3);
% B22=102.0408*eye(3,3);
% W_d=[0;0;0];
% %--------------------------------------------------------------------------
% R_T=[ x(:,1).^2+x(:,2).^2-x(:,3).^2-x(:,4).^2, 2.*(x(:,2).*x(3)+x(:,1).*x(:,4)), 2.*(x(:,2).*x(:,4)-x(:,1).*x(:,3))   
%           2.*(x(:,2).*x(:,3)-x(:,1).*x(:,4)), x(:,1).^2-x(:,2).^2+x(:,3).^2-x(:,4).^2, 2.*(x(:,3).*x(:,4)+x(:,1).*x(:,2))   
%           2.*(x(:,2).*x(:,4)+x(:,1).*x(:,3)), 2.*(x(:,3).*x(:,4)-x(:,1).*x(:,2)), x(:,1).^2-x(:,2).^2-x(:,3).^2+x(:,4).^2];%equation(9)
% W_star=R_T*W_d;
% q0=x(:,1);
% qv=[x(:,2);x(:,3);x(:,4)];
% W_aux=[x(:,5);x(:,6);x(:,7)];
% W=W_aux+W_star;
% S_T_W=-[0*eye(1,numel(W)),W(3),-W(2);-W(3),0,W(1);W(2),-W(1),0];
% S_qv=[0,x(:,4),-x(:,3);-x(:,4),0,x(:,2);x(:,3),-x(:,2),0];
% S_Waux=[0,x(:,7),-x(:,6);-x(:,7),0,x(:,5);x(:,6),-x(:,5),0];
% S_W_star=[0,W_star(3),-W_star(2);-W_star(3),0,W_star(1);W_star(2),-W_star(1),0];
% %--------------------------------------------------------------------------------------------------------------------
% B1=-0.5*(S_qv-q0*eye(3,3));%equation(26.2)
% A2=(-B2*S_Waux*J-B2*S_W_star*J);%equation(20)
% %--------------------------------------------------------------------------------------------------------------------
% p1=[x(:,14) x(:,15) x(:,16);x(:,17) x(:,18) x(:,19);x(:,20) x(:,21) x(:,22)];
% p2=[x(:,23) x(:,24) x(:,25);x(:,26) x(:,27) x(:,28);x(:,29) x(:,30) x(:,31)];
% v1=-inv(R1)*B1'*p1*qv*sign(Q0);%equation(84)
% z1=[x(:,8);x(:,9);x(:,10)];
% z2=[x(:,11);x(:,12);x(:,13)];
% dot=B1*W_aux;
% B1dot=-0.5*( [0,dot(3),-dot(2);-dot(3),0,dot(1);dot(2),-dot(1),0]-(-0.5*qv'*W_aux)*eye(3,3) );
% v1dot=B1dot'*p1*qv+B1'*((p1*B1*R1\B1'*p1-Q1)*qv+p1*(B1*W_aux))*sign(q0);
% v2=IR2*B2'*p2*z2+J*v1dot*sign(Q0)-J*A2*v1*sign(Q0)+J*p2\B1'*p1*z1-J*B22*W2;
% u=v2+S_Waux*J*W_star+S_W_star*J*W_star+J*S_T_W*W_star;
% 
