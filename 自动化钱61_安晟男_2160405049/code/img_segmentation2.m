clear;
clc;

img = imread('woman.bmp');
img_seg = img;
[x,y] = size(img);
thetag = std2(img);

for i =4:(x-3)
   for j = 4:(y-3)
       I = img(i-3:i+3,j-3:j+3);
       I_max = max(max(I));
       I_min = min(min(I));
       if I_max<=163 && I_min>=130
           img_seg(i,j) = 255;
       end      
   end
end


figure(1)
subplot(1,2,1)
imshow(img)
title("源图像")
subplot(1,2,2)
imshow(img_seg)
title("分割图像")

saveas(figure(1), 'C:\Users\10066\Desktop\数字图像处理\第三次作业\new\seg_woman.bmp', 'bmp')

