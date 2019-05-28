%insIndex 在范围内的节点索引 
%insP1  1.与被炸点距离最短 lng lat 索引
%insP2  2.与连接点距离最短 参数同上
%insP3  3.被炸和连接距离最短 参数同上
function [insIndex,insP1,insP2,insP3]=Alterna(lng0,lat0,lng,lat,R,coLng,coLat)
insP1=-inf;
insP2=-inf;
insP3=-inf;
insIndex=zeros(1);

count=1;
vlu1=inf;
vlu2=inf;
vlu3=inf;
for i=1:length(lng)
    temp1=GetDistance(lng(i),lat(i),lng0,lat0);
    if(temp1<=R)
        insIndex(count)=i;
        count=count+1;
        temp2=0;
        for j=1:length(coLng)
            %计算备战节点与之前连接节点的距离
            temp2=temp2+GetDistance(coLng(j),coLat(j),lng(i),lat(i));
        end
        temp3=temp1+temp2;
        %最小值 1.与被炸 2.与连接 3.被炸和连接
        if(vlu1>temp1)
            vlu1=temp1;
            insP1=[lng(i),lat(i),i];
        end
        if(vlu2>temp2)
            vlu2=temp2;
            insP2=[lng(i),lat(i),i];
        end
        if(vlu3>temp3)
            vlu3=temp3;
            insP3=[lng(i),lat(i),i];
        end
    end
end
end


