clear;
clc;
close all;

a = imread('pexels-photo-462118.jpeg');
b = imread('WhatsApp Image 2020-04-26 at 7.36.18 PM.jpeg')

imgr = a(:,:,1);
imgg = a(:,:,2);
imgb = a(:,:,3);

Hnimgr = imhist(imgr);
Hnimgg = imhist(imgg);
Hnimgb = imhist(imgb);

imgr2 = b(:,:,1);
imgg2 = b(:,:,2);
imgb2 = b(:,:,3);

Himgr = imhist(imgr2);
Himgg = imhist(imgg2);
Himgb = imhist(imgb2);

outr = histeq(imgr,Himgr);
outg = histeq(imgg,Himgg);
outb = histeq(imgb,Himgb);

histsp(:,:,1) = outr;
histsp(:,:,2) = outg;
histsp(:,:,3) = outb;

figure;
subplot(131);imshow(b);title('Ref Img');
subplot(132);imshow(a);title('Input Img');
subplot(133);imshow(histsp);title('Res Img');

figure;
subplot(331);plot(Hnimgr);title('Red Input');
subplot(334);plot(Hnimgg);title('Green Input');
subplot(337);plot(Hnimgb);title('Blue Input');
subplot(332);plot(Himgr);title('Red Input');
subplot(335);plot(Himgg);title('Green Input');
subplot(338);plot(Himgb);title('Blue Input');
subplot(333);plot(outr);title('Red Input');
subplot(336);plot(outg);title('Green Input');
subplot(339);plot(outb);title('Blue Input');