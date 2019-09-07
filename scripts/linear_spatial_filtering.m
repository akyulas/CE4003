% sigma = 1.0;
sigma = 2.0;
hsize = 5;
filter = fspecial('gaussian', hsize, sigma);
% Pc = imread('../images/ntu-gn.jpg');
% P4 = uint8(conv2(Pc, filter, 'same'));
Pc = imread('../images/ntu-sp.jpg');
P4 = uint8(conv2(Pc, filter, 'same'));
imshow(P4);