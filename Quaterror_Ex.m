% test for function deri
clc;clear ALL;close all;
%[t,x]=ode45(@(t,x)Quaterror(x),[0 10],[0.8224 0.2226 0.4397 0.3604 14 0.8 0.74 1 10 3 2 1 15])% work perfect
%[t,x]=ode45(@(t,x)test2(x),[0 10],[-0.2226 -0.8224 -0.3604 -0.4397 4 0.8 0.74 1 4 3 2 1 5])
%[t,x]=ode45(@(t,x)test2(x),[0 10],[0.289954 -0.841122 -0.043280 0.454496 4 0.8 0.74 1 4 3 2 1 5])

[TT,f]=ode45(@(TT,f)Quaterror(f),[0 10],[0.8224 0.2226 0.4397 0.3604 10 0.8 0.74 0.8 15 3 0.74 3 5])% work perfect

%--------------------------------------
%tt=0:10/(length(t)-1):10;

% figure
% a=subplot(4,1,1);
% plot(tt,x(:,1))
% b=subplot(4,1,2);
% plot(tt,x(:,2))
% c=subplot(4,1,3);
% plot(tt,x(:,3))
% d=subplot(4,1,4);
% plot(tt,x(:,4))
% title(a,'Qe0');
% title(b,'Qe1');
% title(c,'Qe2');
% title(d,'Qe3');
plot(f(:,1),'r . ')
hold on 
plot(f(:,2),'b-.')
hold on 
plot(f(:,3),'r')
hold on
plot(f(:,4),'y-  ')

figure
subplot(3,3,1)
plot(f(:,5))
subplot(3,3,2)
plot(f(:,6))
subplot(3,3,3)
plot(f(:,7))
subplot(3,3,4)
plot(f(:,8))
subplot(3,3,5)
plot(f(:,9))
subplot(3,3,6)
plot(f(:,10))
subplot(3,3,7)
plot(f(:,11))
subplot(3,3,8)
plot(f(:,12))
subplot(3,3,9)
plot(f(:,13))
