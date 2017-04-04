clear;
I = imread('lenna_bw.png');
imshow(I);

d = 0.05;
SP = imnoise(I,'salt & pepper',d);
figure;
imshow(SP);

mean = 0;
sigma = 0.05;
%eta = rand(size(I)) .*sigma;
%GN = I + uint8(eta);
GN = imnoise(I,'gaussian',mean,(sigma.*sigma));
figure;
imshow(GN);

%imwrite(SP, 'lenna_sp.png');
%imwrite(GN, 'lenna_gn.png');