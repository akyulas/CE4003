Pc = imread('../images/book.jpg');
imshow(Pc);
[X, Y] = ginput(4);
% X = [143.5; 209.5; 257; 4];
% Y = [27.75; 46.25; 215.25; 159.25];
xim = [0 210 210 0];
yim = [0 0 297 297];
v = [xim(1); yim(1); xim(2); yim(2); xim(3); yim(3); xim(4); yim(4)];
A = [
    [X(1), Y(1), 1, 0, 0, 0, -xim(1)*X(1), -xim(1)*Y(1)];
    [0, 0, 0, X(1), Y(1), 1, -yim(1)*X(1), -yim(1)*Y(1)];
    [X(2), Y(2), 1, 0, 0, 0, -xim(2)*X(2), -xim(2)*Y(2)];
    [0, 0, 0, X(2), Y(2), 1, -yim(2)*X(2), -yim(2)*Y(2)];
    [X(3), Y(3), 1, 0, 0, 0, -xim(3)*X(3), -xim(3)*Y(3)];
    [0, 0, 0, X(3), Y(3), 1, -yim(3)*X(3), -yim(3)*Y(3)];
    [X(4), Y(4), 1, 0, 0, 0, -xim(4)*X(4), -xim(4)*Y(4)];
    [0, 0, 0, X(4), Y(4), 1, -yim(4)*X(4), -yim(4)*Y(4)];
];
u = A \ v;
U = reshape([u;1], 3, 3)';
w = U*[X'; Y'; ones(1,4)];
w = w ./ (ones(3,1) * w(3,:));

T = maketform('projective', U');
P2 = imtransform(Pc, T, 'XData', [0 210], 'YData', [0 297]);
imshow(P2);
