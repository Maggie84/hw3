clear;
clc;
name_list = ["citywall.bmp" "citywall1.bmp" "citywall2.bmp" "elain.bmp" "elain1.bmp" "elain2.bmp" "elain3.bmp" "lena.bmp" "lena1.bmp" "lena2.bmp" "lena4.bmp" "woman.BMP" "woman1.bmp" "woman2.bmp"];
img1 = imread('citywall.bmp');
img2 = imread('elain.bmp');
img3 = imread('lena.bmp');
img4 = imread('woman.bmp');
img1_hist = adapthisteq(img1);
img2_hist = adapthisteq(img2);
img3_hist = adapthisteq(img3);
img4_hist = adapthisteq(img4);
H1 = imhist(img1_hist);
H2 = imhist(img2_hist);
H3 = imhist(img3_hist);
H4 = imhist(img4_hist);

for i = 1:14
    if i<=3
        H = H1;
    elseif i<=7
        H = H2;
    elseif i<=11
        H = H3;
    else
        H = H4;
    end
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
    img_h = histeq(img, H);
    subplot(2,2,3)
    imshow(img_h);
    title("直方图均衡图像")
    subplot(2,2,4)
    imhist(img_h)
    title("均衡后直方图")
    saveas(figure(i), ['C:\Users\10066\Desktop\数字图像处理\第三次作业\new\hist2' char(name_list(i))], 'bmp')
end

%   Advantage: avoid unnatural high contrast in some images 