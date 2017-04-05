function [ sum ] = features_auto_correlation(W, I, u, v, x_0, y_0)
%FEATURES_SSE auto-correlation function
%   Detailed explanation goes here

[m, n]= size(W);
m = (m-1)/2;
n = (n-1)/2;

sum = 0;

for y = y_0-m : y_0+m
    for x = x_0-n : x_0+n
        diference = double(I(y+v, x+u)) - double(I(y, x));
        w_x_y = double(W(y-y_0+m+1, x-x_0+n+1));
        sum = sum + w_x_y * diference * diference;
    end
end

end

