Pc = imread('../images/primate-caged.jpg');
Pc = rgb2gray(Pc);

F = fft2(Pc);
S = abs(F).^2 / length(Pc);
% imagesc(fftshift(S.^0.1));
imagesc(S.^0.1);
y1 = 252;
x1 = 11;
y2 = 6;
x2 = 247;
y3 = 248;
x3 = 21;
y4 = 10;
x4 = 237;
y5 = 2;
x5 = 255;
y6 = 254;
x6 = 3;
F(y1-2 : y1+2, x1-2 : x1+2) = 0;
F(y2-2 : y2+2, x2-2 : x2+2) = 0;
F(y3-2 : y3+2, x3-2 : x3+2) = 0;
F(y4-2 : y4+2, x4-2 : x4+2) = 0;
F(y5-1 : y5+2, x5-2 : x5+1) = 0;
F(y6-2 : y6+2, x6-2 : x6+2) = 0;
S = abs(F).^2 / length(Pc);
imagesc(S.^0.1);
result = uint8(ifft2(F));
result = real(result);
imshow(result);



