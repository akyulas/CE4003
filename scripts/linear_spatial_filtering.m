sigma = 1.0;
sigma = 2.0;
hsize = 5;
filter = fspecial('gaussian', hsize, sigma);
mesh(filter);
Pc = imread('../images/ntu-gn.jpg');
imshow(Pc);
P4 = uint8(conv2(Pc, filter));
imshow(P4);
Pc = imread('../images/ntu-sp.jpg');
imshow(Pc);
P4 = uint8(conv2(Pc, filter));
imshow(P4);