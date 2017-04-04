% Elimina el ruido con un filtro gaussiano, diferentes tipos de manejo del
% borde

clear;

% Read image
I = imread('lenna_sp.png');
imshow(I);

% create a Gaussian filter
filter_size = 15;
filter_sigma = 2;
kernel = fspecial('gaussian',  filter_size, filter_sigma); 

% apply with an specific edge parameter
% N
% 'symmetric'
% 'replicate'
% 'circular'

G = imfilter(I, kernel, 0);
figure;
imshow(G);
