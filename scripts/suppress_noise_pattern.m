Pc = imread('../images/pck-int.jpg');

F = fft2(Pc);
S = abs(F).^2 / length(Pc);
% imagesc(fftshift(S.^0.1));
% imagesc(S.^0.1);
% colormap('default');
% Two peaks are at (17, 249) and (241, 9)
y1 = 17;
x1 = 249;
y2 = 241;
x2 = 9;
F(y1 - 2:y1 + 2, x1 - 2:x1 + 2) = 0;
F(y2 - 2:y2 + 2, x2 - 2:x2 + 2) = 0;
S = abs(F).^2 / length(Pc);
% imagesc(fftshift(S.^0.1));
% imagesc(S.^0.1);
% colormap('default');
F(y1,:) = 0;
F(y2,:) = 0;
F(:,x1) = 0;
F(:,x2) = 0;
S = abs(F).^2 / length(Pc);
imagesc(fftshift(S.^0.1));
result = uint8(ifft2(F));
% r_min = double(min(result(:)));
% r_max = double(max(result(:)));
% result = uint8(255 * (double(result) - r_min) / (r_max - r_min));
result = histeq(result, 255);
% imshow(result);


