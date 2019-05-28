function pThr=Center(cityListIndex,lat,lng)
%��Lat1��Lon1�Ӷ�ת��Ϊ���ȡ�
latList=lat(cityListIndex)*pi/180;
lngList=lng(cityListIndex)*pi/180;
%����һ��λ�õ�lat/lonת��Ϊ�ѿ������ꡣ
X=cos(latList).*cos(lngList);
Y=cos(latList).*sin(lngList);
Z=sin(latList);
%�����Ȩƽ��x, y��z����
x=sum(X)/length(X);
y=sum(Y)/length(Y);
z=sum(Z)/length(Z);
%��ƽ��x��y��z����ת��Ϊγ�Ⱥ;��ȡ�
lngList1 = atan2(y,x);
Hyp = sqrt(x * x + y * y);
latList1 = atan2(z,Hyp);
pThr=[lngList1*180/pi,latList1*180/pi];
end

