clear
clc
load('Problem_1.mat');
gplot(c,r,'- .')
hold;
scatter([lng(105),lng(53),lng(56)],[lat(105),lat(53),lat(56)]);
scatter(insLng,insLat);
hold off;
text(lng,lat,cityName,'fontsize',6,'fontweight','bold');
xlabel('¾­¶È');
ylabel('Î³¶È');
