median_filter_size = [3 3];
median_filter_size = [5 5];
Pc = imread('../images/ntu-gn.jpg');
P5 = uint8(medfilt2(Pc, median_filter_size));
Pc = imread('../images/ntu-sp.jpg');
P5 = uint8(medfilt2(Pc, median_filter_size));
imshow(P5);