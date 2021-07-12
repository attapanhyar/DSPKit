function y=calc_conv(x,h,nyb,nye)
    ny = [nyb:nye];
    y = conv(x,h);
    stem(ny,y)
    
end