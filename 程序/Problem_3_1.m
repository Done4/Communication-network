clear
clc
load('Problem_3.mat');

cityListIndex1=[53,49,63,37,46,52];%被炸城市节点索引集合1
cityListIndex2=[43,51,55];%被炸城市节点索引集合2
centerP1=Center(cityListIndex1,lat,lng);%被炸城市节点集合的中心点1
centerP2=Center(cityListIndex2,lat,lng);%被炸城市节点集合的中心点2
%被炸点集合的坐标
fList1=[lng(cityListIndex1),lat(cityListIndex1)];
fList2=[lng(cityListIndex2),lat(cityListIndex2)];
%part1 的连接点
coLng1=lng([67,60,42]);
coLat1=lat([67,60,42]);
%part2 的连接点
coLng2=lng([34,39,61]);
coLat2=lat([34,39,61]);

R1=max([GetDistance(lng(67),lat(67),centerP1(1),centerP1(2)),GetDistance(lng(60),lat(60),centerP1(1),centerP1(2)),GetDistance(lng(42),lat(42),centerP1(1),centerP1(2))]);
R2=max([GetDistance(lng(34),lat(34),centerP2(1),centerP2(2)),GetDistance(lng(39),lat(39),centerP2(1),centerP2(2)),GetDistance(lng(61),lat(61),centerP2(1),centerP2(2))]);
[insIndex1,insP11,insP21,insP31]=AlternaP3(fList1,centerP1(1),centerP1(2),insLng,insLat,R1,coLng1,coLat1);
[insIndex2,insP12,insP22,insP32]=AlternaP3(fList2,centerP2(1),centerP2(2),insLng,insLat,R2,coLng2,coLat2);

figure;
scatter(pThrMatCo(1:9,1),pThrMatCo(1:9,2),'k','*');%被炸点
hold;
scatter([insP11(1),insP12(1)],[insP11(2),insP12(2)],'r');%备战点
scatter([coLng1;coLng2],[coLat1;coLat2],'b');%连接点
scatter([centerP1(1),centerP2(1)],[centerP1(2),centerP2(2)],'m','*')%中心点
text([centerP1(1),centerP2(1)],[centerP1(2),centerP2(2)],'中心点');
text([lng(pThrMatIndex);insP11(1);insP12(1)],[lat(pThrMatIndex);insP11(2);insP12(2)],[cityName(pThrMatIndex);insCityName(insP11(3));insCityName(insP12(3))],'fontsize',10,'fontweight','bold');
for i=1:length(coLng1)
    lx1=[coLng1(i);insP11(1)];
    ly1=[coLat1(i);insP11(2)];
    lx2=[coLng2(i);insP12(1)];
    ly2=[coLat2(i);insP12(2)];
    line(lx1,ly1,'color','r');
    line(lx2,ly2,'color','r');
end
line([lng(61),lng(67)],[lat(61),lat(67)],'color','b');
hold off;
xlabel('经度');
ylabel('纬度');

%
figure;
scatter(pThrMatCo(1:9,1),pThrMatCo(1:9,2),'k','*');%被炸点
hold;
scatter([insP21(1),insP22(1)],[insP21(2),insP22(2)],'r');%备战点
scatter([coLng1;coLng2],[coLat1;coLat2],'b');%连接点
scatter([centerP1(1),centerP2(1)],[centerP1(2),centerP2(2)],'m','*')%中心点
text([centerP1(1),centerP2(1)],[centerP1(2),centerP2(2)],'中心点');
text([lng(pThrMatIndex);insP21(1);insP22(1)],[lat(pThrMatIndex);insP21(2);insP22(2)],[cityName(pThrMatIndex);insCityName(insP21(3));insCityName(insP22(3))],'fontsize',10,'fontweight','bold');
for i=1:length(coLng1)
    lx1=[coLng1(i);insP21(1)];
    ly1=[coLat1(i);insP21(2)];
    lx2=[coLng2(i);insP22(1)];
    ly2=[coLat2(i);insP22(2)];
    line(lx1,ly1,'color','r');
    line(lx2,ly2,'color','r');
end
line([lng(61),lng(67)],[lat(61),lat(67)],'color','b');
hold off;
xlabel('经度');
ylabel('纬度');

%
figure;
scatter(pThrMatCo(1:9,1),pThrMatCo(1:9,2),'k','*');%被炸点
hold;
scatter([insP31(1),insP32(1)],[insP31(2),insP32(2)],'r');%备战点
scatter([coLng1;coLng2],[coLat1;coLat2],'b');%连接点
scatter([centerP1(1),centerP2(1)],[centerP1(2),centerP2(2)],'m','*')%中心点
text([centerP1(1),centerP2(1)],[centerP1(2),centerP2(2)],'中心点');
text([lng(pThrMatIndex);insP31(1);insP32(1)],[lat(pThrMatIndex);insP31(2);insP32(2)],[cityName(pThrMatIndex);insCityName(insP31(3));insCityName(insP32(3))],'fontsize',10,'fontweight','bold');
for i=1:length(coLng1)
    lx1=[coLng1(i);insP31(1)];
    ly1=[coLat1(i);insP31(2)];
    lx2=[coLng2(i);insP32(1)];
    ly2=[coLat2(i);insP32(2)];
    line(lx1,ly1,'color','r');
    line(lx2,ly2,'color','r');
end
line([lng(61),lng(67)],[lat(61),lat(67)],'color','b');
hold off;
xlabel('经度');
ylabel('纬度');







