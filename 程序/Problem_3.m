clear
clc
load('Problem_2.mat');
%��Ӿ���
pThrMat=zeros(15);
pThrMat(1,2)=1;
pThrMat(1,6)=1;
pThrMat(2,8)=1;
pThrMat(3,12)=1;
pThrMat(3,13)=1;
pThrMat(3,4)=1;
pThrMat(4,5)=1;
pThrMat(5,14)=1;
pThrMat(6,15)=1;
pThrMat(7,8)=1;
pThrMat(8,9)=1;
pThrMat(8,11)=1;
pThrMat(9,10)=1;
pThrMat(14,15)=1;
%�人����ʯ��������ɳ�У��˲����������ϲ����Ž������� ||| �Ϸ� ������ ��ɳ ���� �差 ����
%53,49,43,51,55,63,37,46,52,60,42,34,39,61,67 ��������
pThrMatIndex=[53,49,43,51,55,63,37,46,52,60,42,34,39,61,67];
pThrMatCo=[lng(pThrMatIndex),lat(pThrMatIndex)];
gplot(pThrMat,pThrMatCo,'- o');
text(pThrMatCo(:,1),pThrMatCo(:,2),cityName(pThrMatIndex),'fontsize',10,'fontweight','bold');
%��ը���ɫ
hold
scatter(pThrMatCo(1:9,1),pThrMatCo(1:9,2),'k','*');
hold off;
xlabel('����');
ylabel('γ��');