%insIndex �ڷ�Χ�ڵĽڵ����� 
%insP1  1.�뱻ը�������� lng lat ����
%insP2  2.�����ӵ������� ����ͬ��
%insP3  3.��ը�����Ӿ������ ����ͬ��
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
            %���㱸ս�ڵ���֮ǰ���ӽڵ�ľ���
            temp2=temp2+GetDistance(coLng(j),coLat(j),lng(i),lat(i));
        end
        temp3=temp1+temp2;
        %��Сֵ 1.�뱻ը 2.������ 3.��ը������
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


