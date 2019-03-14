clear;
clc;

img = imread('elain.bmp');
img_h = imhist(img);

MinPeakHeight = max(img_h)/4;
[a, b] = findpeaks(img_h, 'MinPeakDistance',8,'MinPeakHeight',MinPeakHeight, 'NPeaks', 8);
[max_1, c] = max(a);
a(c) = 0;
[max_2, d] = max(a);
T = ceil(0.5*(b(c) + b(d)))/255;
img_gray = mat2gray(img);
img_bw = im2bw(img_gray, T);

figure(1)
subplot(1,2,1)
imshow(img)
title("Դͼ��")
subplot(1,2,2)
imshow(img_bw)
title("�ָ�ͼ��")

saveas(figure(1), 'C:\Users\10066\Desktop\����ͼ����\��������ҵ\new\seg_elain.bmp', 'bmp')

