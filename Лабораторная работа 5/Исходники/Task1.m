clear; clc;
format long; syms x;
f1=matlabFunction(x^3);
f2=matlabFunction(x^2);
f3=matlabFunction(x/2);
f1_2=matlabFunction(diff(x^3,2));
f2_2=matlabFunction(diff(x^2,2));
f3_2=matlabFunction(diff(x/2,2));
f1_4=matlabFunction(diff(x^3,4));
f2_4=matlabFunction(diff(x^2,4));
f3_4=matlabFunction(diff(x/2,4));
step=10^-3; b=1; a=0;
X=a:step:b;


F1=f1(X);
int1=integrateByTrapezoid(step,F1)
MaxTheoryTrapezoidError=step^2*(b-a)/12*feval(f1_2,fminbnd(matlabFunction(-diff(x^3,2)),a-1, b+1))
MaxPracticeTrapezoidError=abs(int1-0.25)
X=a:step/2:b;
F1=f1(X);
int2=integrateBySimpson(step,F1)
y=matlabFunction(-diff(x^3,4))
MaxTheorySimpsonError=step^4*(b-a)/2880*0
MaxPracticeSimpsonError=abs(int2-0.25)
X=a:step:b;
F1=f1(X);

F2=f2(X);
int1=integrateByTrapezoid(step,F2)
MaxTheoryTrapezoidError=step^2*(b-a)/12*2
MaxPracticeTrapezoidError=abs(int1-1/3)
X=a:step/2:b;
F2=f2(X);
int2=integrateBySimpson(step,F2)
MaxTheorySimpsonError=step^4*(b-a)/2880*0
MaxPracticeSimpsonError=abs(int2-1/3)
X=a:step:b;
F2=f2(X);

F3=f3(X);
int1=integrateByTrapezoid(step,F3)
MaxTheoryTrapezoidError=step^2*(b-a)/12*0
MaxPracticeTrapezoidError=abs(int1-0.25)
X=a:step/2:b;
F3=f3(X);
int2=integrateBySimpson(step,F3)
MaxTheorySimpsonError=step^4*(b-a)/2880*0
MaxPracticeSimpsonError=abs(int2-0.25)
X=a:step:b;
F3=f3(X);