% Elimina el ruido con un filtro gaussiano

% Read image
I = imread('lenna_sp.png');
imshow(I);

% create a Gaussian filter
filter_size = 15;
filter_sigma = 0.5;
kernel = fspecial('gaussian',  filter_size, filter_sigma); 
figure;
surf(kernel);

% apply
G = imfilter(I, kernel);
figure;
imshow(G);
