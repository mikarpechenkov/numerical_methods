function X=doGaussMethod(A,B)
l=length(B);
Aa=[A B];
for i=1:1:l
    max=0;
    maxId=0;
    for j = i:1:l
        if abs(Aa(j,i))>abs(max)
            max=Aa(j,i);
            maxId=j;
        end
    end
    c=Aa(i,:);
    Aa(i,:)=Aa(maxId,:);
    Aa(maxId,:)=c;
    Aa=Aa./max;
    for j=i+1:1:l
        Aa(j,:)=Aa(j,:)-Aa(j,i)*Aa(i,:)/Aa(i,i);
        Aa(j,i)=0;
    end
end
Aa=Aa./Aa(l,l);
X=ones(l,1);
X(l)=Aa(l,l+1);
for i=1:l-1
    Aa(:,l-i+1)=Aa(:,l-i+1)*X(l-i+1);
    s=sum(Aa(l-i,:))-2*Aa(l-i,l+1)-Aa(l-i,l-i);
    X(l-i)=-s/Aa(l-i,l-i);
end
end