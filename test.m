function xdot = test(x)
R1=0.1*eye(3,3);
v=[0.0098,0.0098,0.0176];
J=diag(v);
R2=0.03*eye(3,3);
gamma= 150;
Q1=eye(3,3);
Q2=eye(3,3);
W_d=[0.56;0.61;0.42];
%--------------------------------------------------------------------------
R_T=[ x(1)^2+x(2)^2-x(3)^2-x(4)^2, 2*(x(2)*x(3)+x(1)*x(4)), 2*(x(2)*x(4)-x(1)*x(3))   
          2*(x(2)*x(3)-x(1)*x(4)), x(1)^2-x(2)^2+x(3)^2-x(4)^2, 2*(x(3)*x(4)+x(1)*x(2))   
          2*(x(2)*x(4)+x(1)*x(3)), 2*(x(3)*x(4)-x(1)*x(2)), x(1)^2-x(2)^2-x(3)^2+x(4)^2];
W_star=R_T*W_d;
q0=x(1);
qv=[x(2);x(3);x(4)];
W_aux=[x(5);x(6);x(7)];

B1=0.5*[0,-x(4),x(3);x(4),0,-x(2);-x(3),x(2),0]+q0*eye(3,3);
B2=inv(J);
A2=(-inv(J)*[0,x(7),-x(6);-x(7),0,x(5);x(6),-x(5),0]*J-inv(J)*[0,W_star(3),-W_star(2);-W_star(3),0,W_star(1);W_star(2),-W_star(1),0]*J);
G2=inv(J);
B22=inv(J);
z1=[x(8);x(9);x(10)];
z2=[x(11);x(12);x(13)];
p1=[x(14) x(15) x(16);x(17) x(18) x(19);x(20) x(21) x(22)];
p2=[x(23) x(24) x(25);x(26) x(27) x(28);x(29) x(30) x(31)];
W2=1/(2*gamma^2)*B22'*p2*z2;
Ksi2=-inv(R2)*B2'*p2*z2;

v1=-inv(R1)*inv(B1)*inv(R1)*p1*qv*sign(q0);
q0dot=-0.5*qv'*W_aux;
qvdot=B1*W_aux;
B1dot=0.5*[0,-qvdot(3),qvdot(2);qvdot(3),0,-qvdot(1);-qvdot(2),qvdot(1),0]+q0dot*eye(3,3);
p1dot=p1*B1*inv(R1)*B1'*p1-Q1;
v1dot=inv((B1^2*R1^2))*(B1*p1*qvdot + B1*p1dot*qv - p1*B1dot*qv)*sign(q0);
%v1dot=-inv(R1)*invB1dot*inv(R1)*p1*x1+(-inv(R1)*inv(B1)*inv(R1))*(p1dot*x1+p1*x1dot);
v2=inv(R2)*B2'*p2*z2+inv(B2)*v1dot*sign(q0)-inv(B2)*A2*v1*sign(q0)+inv(B2)*inv(p2)*B1'*p1*z1-inv(B2)*(1/2*gamma^2)*B22*(B22')*p2*z2;
W_auxdot=A2*W_aux+B2*v2+G2*W2;
z1dot=B1*z2-B1*inv(R1)*B1'*p1*z1;
z2dot=A2*z2+B2*Ksi2-inv(p2)*B1'*p1*z1;
p1dot=p1dot(:);
T2=1/(2*gamma^2)*G2*(G2')-B2*inv(R2)*B2';
p2dot=-A2'*p2-p2*A2-p2*T2*p2-Q2;
p2dot=p2dot(:);
xdot=[q0dot;qvdot;W_auxdot;z1dot;z2dot;p1dot;p2dot];
xdot=xdot(:);
end

