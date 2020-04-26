%% Clearing Prior Data
clear;
clc;

%% Getting Image Data
a = imread('cameraman.tif');
figure(); subplot(251); imshow(a)
cd = double(a);
subplot(252); imshow(cd/255)
impixelinfo

%% Bit plane
c0 = mod(cd,2);
figure, imshow(c0);

for c = [2 4  8 16 32 64 128]
    for i=3:10
        d=mod(floor(cd/c),2);
        figure(),subplot(2,5,i); imshow(d);
    end
end 