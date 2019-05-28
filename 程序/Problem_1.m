clear
clc
load('location.mat');
d=Distance(lng,lat);
P = zeros(1, 139);
P(1,1) = 1;
V = 1:139;
V_P = V - P;
link = zeros(138,2);
k=1;
Sum1=0;
c=zeros(139);
while k<139
    p = P(P~=0);
    v = V_P(V_P~=0);
    pv = min(min(d(p,v)));
    [x, y] = find(d==pv);
    for i=1:length(x)
        if  any(P==x(i)) && any(V_P==y(i))%集合判断，关键！
            P(1,y(i)) = y(i);
            V_P = V - P;
            link(k, :) = [x(i), y(i)];
            Sum1=Sum1+d(x(i), y(i));
            c(x(i), y(i))=d(x(i), y(i));
            k = k+1;
            break;
        end
    end
end
r=[lng,lat];
figure;
gplot(c,r,'- o')
text(lng,lat,cityName,'fontsize',7,'fontweight','bold');%6
xlabel('经度');
ylabel('纬度');
