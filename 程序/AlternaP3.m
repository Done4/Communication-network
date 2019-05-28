%insIndex 在范围内的节点索引 
%insP1  1.与被炸点的集合距离最短 lng lat 索引
%insP2  2.与连接点距离最短 参数同上
%insP3  3.被炸点集合和连接距离最短 参数同上
%lng0 lat0 中心点坐标
%R 中心点与连接点的最长距离
%coLng coLat 连接点坐标
%fList 被炸点集合
function [insIndex,insP1,insP2,insP3]=AlternaP3(fList,lng0,lat0,lng,lat,R,coLng,coLat)
insP1=-inf;
insP2=-inf;
insP3=-inf;
insIndex=zeros(1);

count=1;
vlu1=inf;
vlu2=inf;
vlu3=inf;
for i=1:length(lng)
    temp=GetDistance(lng(i),lat(i),lng0,lat0);
    if(temp<=R)
        insIndex(count)=i;
        count=count+1;
        temp1=0;
        temp2=0;
        for k=1:length(fList)
            temp1=temp1+GetDistance(fList(1),fList(2),lng(i),lat(i));
        end
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
