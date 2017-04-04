%finds a template into a 2D image

clear;
template = imread('cidetec.png');
template = template(:,:,1);
Icolor = imread('ESCOM2_verylow.png');
I = Icolor(:,:,1);

figure;
imshow(template);

figure;
imshow(I);

pause;

C = normxcorr2(template, I);
figure;
imshow(C);


%finds the indices
[y, x] = find(C==max(C(:)));
%move the index the size of the template
y = y - size(template,1) +1;
x = x - size(template,2) +1;


%Draw a rectangle
[m, n] = size(template);
figure;
imshow(Icolor);
hold on;
rectangle('Position', [x y n m] );
