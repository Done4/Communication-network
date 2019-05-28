%随机摧毁10%的节点
clear
clc
load('Problem_1.mat');

figure;
gplot(c,r,'- o')
text(lng,lat,cityName,'fontsize',7,'fontweight','bold');%6
hold;
line([lng(90),lng(41)],[lat(90),lat(41)],'color','r');
line([lng(45),lng(12)],[lat(45),lat(12)],'color','r');
line([lng(11),lng(3)],[lat(11),lat(3)],'color','r');
line([lng(1),lng(4)],[lat(1),lat(4)],'color','r');
line([lng(22),lng(33)],[lat(22),lat(33)],'color','r');
line([lng(100),lng(112)],[lat(100),lat(112)],'color','r');
line([lng(127),lng(138)],[lat(127),lat(138)],'color','r');
hold off;
xlabel('经度');
ylabel('纬度');
c(90,41)=GetDistance(lng(90),lat(90),lng(41),lat(41));
c(45,12)=GetDistance(lng(45),lat(45),lng(12),lat(12));
c(11,3)=GetDistance(lng(11),lat(11),lng(3),lat(3));
c(1,4)=GetDistance(lng(1),lat(1),lng(4),lat(4));
c(22,33)=GetDistance(lng(22),lat(22),lng(33),lat(33));
c(100,112)=GetDistance(lng(100),lat(100),lng(112),lat(112));
c(127,138)=GetDistance(lng(127),lat(127),lng(138),lat(138));
z=c;
fPointList=zeros(1);
for i=1:14
    fPointList(i)=round(unifrnd(1,139));
    while(length(unique(fPointList))<i)
        fPointList(i)=round(unifrnd(1,139));
    end
end
%导入保存数据 Problem_4.mat 还原当时随机点
load('Problem_4.mat');
c(fPointList,:)=0;
c(:,fPointList)=0;
figure;
gplot(c,r,'- o');
text(lng,lat,cityName,'fontsize',6,'fontweight','bold');
hold;
scatter(lng(fPointList),lat(fPointList),'*','r');
hold off;
xlabel('经度');
ylabel('纬度');