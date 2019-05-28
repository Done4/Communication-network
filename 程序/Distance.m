function d=Distance(lng,lat)
d=zeros(length(lat));
d(logical(eye(size(d))))=inf;
for i=1:length(lat)-1
    for j=i+1:length(lng)
        d(i,j)=GetDistance(lng(i),lat(i),lng(j),lat(j));
        d(j,i)=d(i,j);
    end
end
end
