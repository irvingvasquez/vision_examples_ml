% Median filter

clear;

% Read image
I = imread('lenna_sp.png');
imshow(I);

% apply
m = 3;
n = 3;
G = medfilt2(I, [m n]);
figure;
imshow(G);