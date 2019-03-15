clear;
clc;

img = double(imread('lena.bmp'));
img_stg = img;
img_region = img;
[x,y] = size(img);
mg = mean(mean(img));
thetag = std2(img);

E = 2;      
k0=0.6;
k1=0.02;
k2=0.4;

for i =4:(x-3)
   for j = 4:(y-3)
       I = img(i-3:i+3,j-3:j+3);
       ms = mean(mean(I));
       thetas = std2(I);
       if (ms<=k0*mg) && (thetas>=k1*thetag) && (thetas<=k2*thetag)
           img_stg(i,j) = E * img(i,j);
           img_region(i,j) = 255;
       end      
   end
end

img = uint8(img);
img_stg = uint8(img_stg);
img_region = uint8(img_region);

figure(1)
subplot(1,3,1)
imshow(img)
title("源图像")
subplot(1,3,2)
imshow(img_region)
title("直方图局部增强区域")
subplot(1,3,3)
imshow(img_stg)
title("直方图局部增强效果")

saveas(figure(1), 'C:\Users\10066\Desktop\数字图像处理\第三次作业\new\stg_lena.bmp', 'bmp')