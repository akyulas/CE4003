Pc = imread('../images/mrt-train.jpg');
P = rgb2gray(Pc);
P_minVal = double(min(P(:)));
P_maxVal = double(max(P(:)));
P_stretchConstant = 255 / (P_maxVal - P_minVal);
subOperation = imsubtract(P, P_minVal);
P2 = immultiply(subOperation, P_stretchConstant);
imshow(P2);