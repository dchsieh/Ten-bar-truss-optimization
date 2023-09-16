clear;

x0=[0.1;0.1];
A=[]; 
b=[];
Aeq=[]; 
beq=[];
ub=[0.5;0.5];
lb=[0.001;0.001];
options = optimset ('display','off','Algorithm','sqp')
[x,fval,exitflag]=fmincon(@(x)obj(x),x0,A,b,Aeq,beq,lb,ub,@(x)nonlcon(x),options)
