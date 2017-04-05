% Show auto correlation surfaces
clear;

%parameters
n = 2;
kernel_size = 2*n +1;

m = 3;
e_size = 2*m+1;
E = zeros(e_size, e_size);

% Read image
I = imread('lenna_bw.png');
imshow(I);

uiwait(msgbox('Locate the point'));
[x_0,y_0] = ginput(1);
hold on; % Prevent image from being blown away.
plot(x_0,y_0,'r+', 'MarkerSize', 50);

p_i = int64(round(y_0))
p_j = int64(round(x_0))

% Kernel 
W = ones(kernel_size, kernel_size) / (kernel_size*kernel_size);

for u = -m:m;
    for v = -m:m;
        E(v+m+1, u+m+1) = features_auto_correlation(W, I, u, v, p_j, p_i);
    end
end

figure;
surf(E);