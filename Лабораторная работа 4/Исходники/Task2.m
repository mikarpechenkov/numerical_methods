clear; clc; clf;
    syms x;
    format long
    y=matlabFunction(exp(x));
    y1=matlabFunction(diff(y(x),x,1));
    y2=matlabFunction(diff(y(x),x,2));
    y3=matlabFunction(-diff(y(x),x,3));
    y1minus=matlabFunction(-diff(y(x),x,1));
    y2minus=matlabFunction(-diff(y(x),x,2));
    y3minus=matlabFunction(-diff(y(x),x,3));
    x0=5;
    i=1:1:5;
    h=2.^-i;
    ErrorDerLinear = (y(x0+h)-y(x0))./h - y1(x0);
    ErrorDerSquare = (y(x0+h)-y(x0-h))./2./h - y1(x0);
    ErrorTheoryLinear = abs(y2(fminbnd(y2minus,-x0-1, x0+1))).*h/2;
    ErrorTheorySquare = abs(y3(fminbnd(y3minus,-x0-1, x0+1))).*(h.^2)/12;
    hold on; grid on; xlabel('x'); ylabel('y');
    plot(h,ErrorDerLinear,'-g');
    plot(h,ErrorTheoryLinear,'-b');
    plot(h,ErrorTheorySquare,'-m');
    plot(h,ErrorDerSquare,'-r');
    for j=1:1:length(i)-1
        RelationLinearError = ErrorDerLinear(j)/ErrorDerLinear(j+1)
        RelationSquareError = ErrorDerSquare(j)/ErrorDerSquare(j+1)
    end
    hold off;