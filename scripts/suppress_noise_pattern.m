Pc = imread('../images/pck-int.jpg');
imshow(Pc);

F = fft2(Pc);

S = abs(F).^2 / length(Pc);
imagesc(fftshift(S.^0.1));
imagesc(S.^0.1);
colormap('default');

% Two peaks are at (17, 249) and (241, 9)
y1 = 17;
x1 = 249;
y2 = 241;
x2 = 9;
F(y1 - 2:y1 + 2, x1 - 2:x1 + 2) = 0;
F(y2 - 2:y2 + 2, x2 - 2:x2 + 2) = 0;

S = abs(F).^2 / length(Pc);
imagesc(fftshift(S.^0.1));
imagesc(S.^0.1);
colormap('default');

F(y1,:) = 0;
F(y2,:) = 0;
F(:,x1) = 0;
F(:,x2) = 0;

S = abs(F).^2 / length(Pc);
imagesc(S.^0.1);
imagesc(fftshift(S.^0.1));
colormap('default');

result = uint8(ifft2(F));
P_minVal = double(min(result(:)));
P_maxVal = double(max(result(:)));
subOperation = imsubtract(result, P_minVal);
result = immultiply(subOperation, 255 / (P_maxVal - P_minVal));
imshow(result);


