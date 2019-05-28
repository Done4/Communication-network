clear
clc
load('Problem_2.mat');
firedIndex=53;%�人�ڵ�����
connIndex=[find(c(:,firedIndex)),find(c(firedIndex,:))]; %���ӵ������
%���ӵ�ľ�γ��
coLng=lng(connIndex);
coLat=lat(connIndex);
R=max(max(c(firedIndex,find(c(firedIndex,:)))),max(c(find(c(:,firedIndex)),firedIndex))); %����뱻ը��֮ǰ���ӽڵ����Զ����
[insIndex,insP1,insP2,insP3]=Alterna(lng(firedIndex),lat(firedIndex),insLng,insLat,R,coLng,coLat);
%��ѡ�ڵ�����
insX=insLng(insIndex);
insY=insLat(insIndex);

figure;
scatter(lng(firedIndex),lat(firedIndex),'k');%��ը��
hold;
scatter(coLng,coLat,'b');%���ӵ�
scatter(insX,insY,'g');%��ѡ��
insName=[cityName(firedIndex);cityName(connIndex);insCityName(insIndex);insCityName(insP1(3));insCityName(insP2(3));insCityName(insP3(3))];

%��ע
text([lng(firedIndex);coLng;insX;insP1(1);insP2(1);insP3(1)],[lat(firedIndex);coLat;insY;insP1(2);insP2(2);insP3(2)],insName,'fontsize',6,'fontweight','bold');
lIndexX1=[insP1(1);coLng];
lIndexY1=[insP1(2);coLat];
for i=2:length(lIndexX1)
	pointX1=[lIndexX1(i),lIndexX1(1)];
	pointY1=[lIndexY1(i),lIndexY1(1)];
	line(pointX1,pointY1,'color','r');
end
hold off;
xlabel('����');
ylabel('γ��');


figure;
scatter(lng(firedIndex),lat(firedIndex),'k');%��ը��
hold;
scatter(coLng,coLat,'b');%���ӵ�
scatter(insX,insY,'g');%��ѡ��
insName=[cityName(firedIndex);cityName(connIndex);insCityName(insIndex);insCityName(insP1(3));insCityName(insP2(3));insCityName(insP3(3))];

%��ע
text([lng(firedIndex);coLng;insX;insP1(1);insP2(1);insP3(1)],[lat(firedIndex);coLat;insY;insP1(2);insP2(2);insP3(2)],insName,'fontsize',6,'fontweight','bold');
lIndexX1=[insP2(1);coLng];
lIndexY1=[insP2(2);coLat];
for i=2:length(lIndexX1)
	pointX1=[lIndexX1(i),lIndexX1(1)];
	pointY1=[lIndexY1(i),lIndexY1(1)];
	line(pointX1,pointY1,'color','r');
end
hold off;
xlabel('����');
ylabel('γ��');


figure;
scatter(lng(firedIndex),lat(firedIndex),'k');%��ը��
hold;
scatter(coLng,coLat,'b');%���ӵ�
scatter(insX,insY,'g');%��ѡ��
insName=[cityName(firedIndex);cityName(connIndex);insCityName(insIndex);insCityName(insP1(3));insCityName(insP2(3));insCityName(insP3(3))];

%��ע
text([lng(firedIndex);coLng;insX;insP1(1);insP2(1);insP3(1)],[lat(firedIndex);coLat;insY;insP1(2);insP2(2);insP3(2)],insName,'fontsize',6,'fontweight','bold');
lIndexX1=[insP3(1);coLng];
lIndexY1=[insP3(2);coLat];
for i=2:length(lIndexX1)
	pointX1=[lIndexX1(i),lIndexX1(1)];
	pointY1=[lIndexY1(i),lIndexY1(1)];
	line(pointX1,pointY1,'color','r');
end
hold off;
xlabel('����');
ylabel('γ��');

