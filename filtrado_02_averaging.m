clear;

I = imread('lenna_gn.png');
imshow(I);

% uniform filter
h = ones(5,5) / 25;

I2 = imfilter(I,h);

imshow(I), title('Original Image');
figure, imshow(I2), title('Filtered Image');