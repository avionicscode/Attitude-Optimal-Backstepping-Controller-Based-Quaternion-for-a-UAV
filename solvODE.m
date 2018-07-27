% test for function deri
clc;clear ALL;close all;
[t,x]=ode45(@(t,x)optimal_ctrl(x),[0 1],[0.8224 0.2226 0.4397 0.3604 0 0 0 1 0.5 3 2 1 1.2 0.1 0.2 0.3 0.4 0.5 0.1 0.2 0.3 0.1 0.01 0.02 0.3 0.4 0.2 0.03 0.02 0.001 0.4])


%--------------------------------------
tt=0:1/(length(t)-1):1;
% figure
% plot(tt,x(:,1),'r',tt,x(:,2),'g',tt,x(:,3),'b',tt,x(:,4),'k') % Qe
% figure
% plot(tt,x(:,5),'r',tt,x(:,6),'g',tt,x(:,7),'b') % W_aux
% figure
% plot(tt,x(:,8),'r',tt,x(:,9),'g',tt,x(:,10),'b') % z1
% figure
% plot(tt,x(:,11),'r',tt,x(:,12),'g',tt,x(:,13),'b') %z2
% figure
% plot(tt,x(:,14),'r',tt,x(:,15),'g',tt,x(:,16),'b',tt,x(:,17),'r',tt,x(:,18),'g',tt,x(:,19),'b',tt,x(:,20),'r',tt,x(:,21),'g',tt,x(:,22),'b') %p1
% figure
% plot(tt,x(:,23),'r',tt,x(:,24),'g',tt,x(:,25),'b',tt,x(:,26),'r',tt,x(:,27),'g',tt,x(:,28),'b',tt,x(:,29),'r',tt,x(:,30),'g',tt,x(:,31),'b') %p2

figure
a=subplot(4,1,1);
plot(tt,x(:,1))
b=subplot(4,1,2);
plot(tt,x(:,2))
c=subplot(4,1,3);
plot(tt,x(:,3))
d=subplot(4,1,4);
plot(tt,x(:,4))
title(a,'Qe0')
title(b,'Qe1')
title(c,'Qe2')
title(d,'Qe3')

figure
aa=subplot(3,1,1);
plot(tt,x(:,5))
bb=subplot(3,1,2);
plot(tt,x(:,6))
cc=subplot(3,1,3);
plot(tt,x(:,7))
title(aa,'W1')
title(bb,'W2')
title(cc,'W3')

figure
w=subplot(3,1,1);
plot(tt,x(:,8))
f=subplot(3,1,2);
plot(tt,x(:,9))
l=subplot(3,1,3);
plot(tt,x(:,10))
title(w,'z1')
title(f,'z2')
title(l,'z3')

figure
subplot(3,1,1)
plot(tt,x(:,11))
subplot(3,1,2)
plot(tt,x(:,12))
subplot(3,1,3)
plot(tt,x(:,13))

figure
subplot(3,3,1)
plot(tt,x(:,14))
subplot(3,3,2)
plot(tt,x(:,15))
subplot(3,3,3)
plot(tt,x(:,16))
subplot(3,3,4)
plot(tt,x(:,17))
subplot(3,3,5)
plot(tt,x(:,18))
subplot(3,3,6)
plot(tt,x(:,19))
subplot(3,3,7)
plot(tt,x(:,20))
subplot(3,3,8)
plot(tt,x(:,21))
subplot(3,3,9)
plot(tt,x(:,22))

figure
subplot(3,3,1)
plot(tt,x(:,23))
subplot(3,3,2)
plot(tt,x(:,24))
subplot(3,3,3)
plot(tt,x(:,25))
subplot(3,3,4)
plot(tt,x(:,26))
subplot(3,3,5)
plot(tt,x(:,27))
subplot(3,3,6)
plot(tt,x(:,28))
subplot(3,3,7)
plot(tt,x(:,29))
subplot(3,3,8)
plot(tt,x(:,30))
subplot(3,3,9)
plot(tt,x(:,31))
