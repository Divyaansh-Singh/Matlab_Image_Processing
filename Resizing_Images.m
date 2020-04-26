%% Clearing Prior Data
close all;
clear all;
clc;

%% Reading the Image
a = imread('cameraman.tif');     %cameraman is a default image
[row,column] = size(a);
i = 1; j = 1;
c = zeros(row/2,column/2);      %To half the size and empty new matrix

for x = 1:2:row
    for y = 1:2:column
        c(i,j)= a(x,y);
        j= j+1;
    end
i = i+1;
j=1;
end

figure, imshow(a)
figure, imshow(c/255)
figure, imagesc(c), colormap(gray)