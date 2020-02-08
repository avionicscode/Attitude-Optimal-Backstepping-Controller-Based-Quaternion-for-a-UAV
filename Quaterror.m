function fdot = Quaterror(f)
R1=0.1*eye(3,3);
Q1=eye(3,3);
%--------------------------------------------------------------------------
q0=f(1);
qv=[f(2);f(3);f(4)];
p1=[f(5) f(6) f(7);f(8) f(9) f(10);f(11) f(12) f(13)];
B1=0.5*[0,-f(4),f(3);f(4),0,-f(2);-f(3),f(2),0]+q0*eye(3,3);%equation(26.2)
v1=-inv(R1)*B1'*p1*qv*sign(q0);%equation(84)
q0dot=-0.5*qv'*v1*sign(q0);%equation(21)
qvdot=B1*v1*sign(q0);
p1dot=p1*B1*R1\B1'*p1-Q1;%equation(97)
p1dot=p1dot(:);
fdot=[q0dot;qvdot;p1dot];
fdot=fdot(:);
end

