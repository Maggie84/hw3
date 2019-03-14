# 数字图像处理第三次实验：直方图图像处理
姓名：安晟男  
班级：自动化钱61   
学号：2160405049   

## 摘要
本次试验基于图像的直方图，以灰度像素的统计意义进行图像处理，以实现图像均衡、图像增强、图像分割等目的。具体实现内容如下：  
- 绘制图像直方图
- 实现图像直方图均衡
- 实现图像直方图匹配与增强
- 基于7x7局部区域直方图增强
- 利用直方图实现简单的图像分割

## 一、绘制图像直方图及均衡结果
所给源图像的直方图及直方图均衡结果如图如下所示:  
<p align="center">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1citywall.bmp" alt="Sample"  width="280" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1citywall1.bmp" alt="Sample"  width="280" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1citywall2.bmp" alt="Sample"  width="280" height="230">
    <p align="center">
        <em>Citywall, Citywall1 and Citywall2</em>
    </p>
</p>
<p align="center">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1elain.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1elain1.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1elain2.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1elain3.bmp" alt="Sample"  width="300" height="230">
    <p align="center">
        <em>Elain, Elain1, Elain2 and Elain3</em>
    </p>
</p>
<p align="center">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1lena.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1lena1.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1lena2.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1lena4.bmp" alt="Sample"  width="300" height="230">
    <p align="center">
        <em>Lena, Lena1, Lena2 and Lena4</em>
    </p>
</p>
<p align="center">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1woman.BMP" alt="Sample"  width="280" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1woman1.bmp" alt="Sample"  width="280" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist1woman2.bmp" alt="Sample"  width="280" height="230">
    <p align="center">
        <em>Woman, Woman1 and Woman2</em>
    </p>
</p>
