clear;
clc;
name_list = ["citywall.bmp" "citywall1.bmp" "citywall2.bmp" "elain.bmp" "elain1.bmp" "elain2.bmp" "elain3.bmp" "lena.bmp" "lena1.bmp" "lena2.bmp" "lena4.bmp" "woman.BMP" "woman1.bmp" "woman2.bmp"];

for i = 1:14
    img = [];
    img_h = [];
    figure(i)
    img = imread(['new' char(name_list(i))]);
    subplot(2,2,1)
    imshow(img)
    title("源图像")
    subplot(2,2,2)
    imhist(img);
    title("源图像直方图")
    img_h = histeq(img);
    subplot(2,2,3)
    imshow(img_h);
    title("直方图均衡图像")
    subplot(2,2,4)
    imhist(img_h)
    title("均衡后直方图")
    saveas(figure(i), ['C:\Users\10066\Desktop\数字图像处理\第三次作业\new\hist1' char(name_list(i))], 'bmp')
end