close all;
clear all;
clc;
 
image = imread('2.tif');
[m, n] = size(image);
%模板大小
k = 3;
myFilter = zeros(k, k, 'uint8');
 
for i = 1 : k
    for j = 1 : k
        myFilter(i, j) = 1;
    end
end
[image2, image3] = spacelFilter(image, myFilter);
image4 = medfilt2(image, [3 3]);
figure;
subplot(2, 2, 1), imshow(image), title('原图像');
subplot(2, 2, 2), imshow(image2), title('3*3均值滤波图像');
subplot(2, 2, 3), imshow(image3), title('3*3中值滤波图像');
subplot(2, 2, 4), imshow(image4), title('matlab自带的中值滤波图像');
