function xdot = Omgerror(x)
Q0=0.8224;
R1=0.1*eye(3,3);
v=[0.0098,0.0098,0.0176];
J=diag(v);
%R2=0.03*eye(3,3);
IR2=33.3333*eye(3,3);
gamma= 150;
Q1=eye(3,3);
Q2=eye(3,3);
B2=102.0408*eye(3,3);%equation(20)
G2=102.0408*eye(3,3);
B22=102.0408*eye(3,3);
W_d=[0;0;0];
%--------------------------------------------------------------------------------------------------------------------
R_T=[ x(1)^2+x(2)^2-x(3)^2-x(4)^2, 2*(x(2)*x(3)+x(1)*x(4)), 2*(x(2)*x(4)-x(1)*x(3))   
          2*(x(2)*x(3)-x(1)*x(4)), x(1)^2-x(2)^2+x(3)^2-x(4)^2, 2*(x(3)*x(4)+x(1)*x(2))   
          2*(x(2)*x(4)+x(1)*x(3)), 2*(x(3)*x(4)-x(1)*x(2)), x(1)^2-x(2)^2-x(3)^2+x(4)^2];%equation(9)
W_star=R_T*W_d;
q0=x(1);
qv=[x(2);x(3);x(4)];
W_aux=[x(5);x(6);x(7)];
W=W_aux+W_star;
S_T_W=-[0,W(3),-W(2);-W(3),0,W(1);W(2),-W(1),0];
S_qv=[0,x(4),-x(3);-x(4),0,x(2);x(3),-x(2),0];
S_Waux=[0,x(7),-x(6);-x(7),0,x(5);x(6),-x(5),0];
S_W_star=[0,W_star(3),-W_star(2);-W_star(3),0,W_star(1);W_star(2),-W_star(1),0];
%--------------------------------------------------------------------------------------------------------------------
B1=-0.5*(S_qv-q0*eye(3,3));%equation(26.2)
A2=(-B2*S_Waux*J-B2*S_W_star*J);%equation(20)
%--------------------------------------------------------------------------------------------------------------------
p1=[x(14) x(15) x(16);x(17) x(18) x(19);x(20) x(21) x(22)];
p2=[x(23) x(24) x(25);x(26) x(27) x(28);x(29) x(30) x(31)];
v1=-inv(R1)*B1'*p1*qv*sign(Q0);%equation(84)
z1=[x(8);x(9);x(10)];
z2=[x(11);x(12);x(13)];
Psi2=-IR2*B2'*p2*z2;
W2=1/(2*gamma^2)*B22'*p2*z2;%equation(88)
q0dot=-0.5*qv'*v1*sign(Q0);%equation(21)
qvdot=B1*v1*sign(Q0);
z1dot=-B1*R1\B1'*p1*z1;
z2dot=A2*z2+B2*Psi2-p2\B1'*p1*z1;
p1dot=p1*B1*R1\B1'*p1-Q1;%equation(97)
dot=B1*W_aux;
B1dot=-0.5*( [0,dot(3),-dot(2);-dot(3),0,dot(1);dot(2),-dot(1),0]-(-0.5*qv'*W_aux)*eye(3,3) );
v1dot=B1dot'*p1*qv+B1'*((p1*B1*R1\B1'*p1-Q1)*qv+p1*(B1*W_aux))*sign(q0);
v2=IR2*B2'*p2*z2+J*v1dot*sign(Q0)-J*A2*v1*sign(Q0)+J*p2\B1'*p1*z1-J*B22*W2;
W_auxdot=A2*W_aux+B2*v2+B22*W2;%equation(26.2)
p1dot=p1dot(:);
T2=1/(2*gamma^2)*G2*(G2')-B2*IR2*B2';%equation(98)
p2dot=-A2'*p2-p2*A2-p2*T2*p2-Q2;%equation(98)
p2dot=p2dot(:);
u=v2+S_Waux*J*W_star+S_W_star*J*W_star+J*S_T_W*W_star
xdot=[q0dot;qvdot;W_auxdot;z1dot;z2dot;p1dot;p2dot];
xdot=xdot(:);
end

