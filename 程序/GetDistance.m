function s=GetDistance(lng1,lat1,lng2,lat2)
        radLat1 = lat1 * pi / 180.0;
        radLat2 = lat2 * pi / 180.0;
        a = radLat1 - radLat2;
        b = (lng1 - lng2)* pi / 180.0;
        s = 2 * asin(sqrt(power(sin(a/2),2) + cos(radLat1)*cos(radLat2)*power(sin(b/2),2)));
        s = s * 6378.137;
end


  