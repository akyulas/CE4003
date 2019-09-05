Pc = imread('../images/mrt-train.jpg');
P = rgb2gray(Pc);
imhist(P, 256);