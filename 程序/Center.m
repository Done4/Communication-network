function pThr=Center(cityListIndex,lat,lng)
%将Lat1和Lon1从度转换为弧度。
latList=lat(cityListIndex)*pi/180;
lngList=lng(cityListIndex)*pi/180;
%将第一个位置的lat/lon转换为笛卡尔坐标。
X=cos(latList).*cos(lngList);
Y=cos(latList).*sin(lngList);
Z=sin(latList);
%计算加权平均x, y和z坐标
x=sum(X)/length(X);
y=sum(Y)/length(Y);
z=sum(Z)/length(Z);
%将平均x、y、z坐标转换为纬度和经度。
lngList1 = atan2(y,x);
Hyp = sqrt(x * x + y * y);
latList1 = atan2(z,Hyp);
pThr=[lngList1*180/pi,latList1*180/pi];
end

