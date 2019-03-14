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

### 直方图均衡效果分析
1. 对每一系列的原始图片而言，直方图均衡使其明暗更为协调，一定程度上降低了图片的局部高对比度；
2. 对同一系列内不同明暗的图片而言，直方图均衡明显改善了图片过明或过暗的情况，使其输出效果更加接近原始图片，
但由于变明或变暗过程丢弃了部分灰度级，所以无法完全恢复出原始图片的效果。 
 

## 二、指定直方图匹配增强
对每张图片，指定其所需匹配的直方图为：系列图片的原始图片基于MATLAB的'adapthisteq()'函数所得到的直方图。  
直方图匹配增强的效果如下：  
<p align="center">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2citywall.bmp" alt="Sample"  width="280" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2citywall1.bmp" alt="Sample"  width="280" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2citywall2.bmp" alt="Sample"  width="280" height="230">
    <p align="center">
        <em>Citywall, Citywall1 and Citywall2</em>
    </p>
</p>
<p align="center">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2elain.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2elain1.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2elain2.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2elain3.bmp" alt="Sample"  width="300" height="230">
    <p align="center">
        <em>Elain, Elain1, Elain2 and Elain3</em>
    </p>
</p>
<p align="center">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2lena.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2lena1.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2lena2.bmp" alt="Sample"  width="300" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2lena4.bmp" alt="Sample"  width="300" height="230">
    <p align="center">
        <em>Lena, Lena1, Lena2 and Lena4</em>
    </p>
</p>
<p align="center">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2woman.BMP" alt="Sample"  width="280" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2woman1.bmp" alt="Sample"  width="280" height="230">
    <img src="https://github.com/an1006634493/hw3/blob/master/img/hist2woman2.bmp" alt="Sample"  width="280" height="230">
    <p align="center">
        <em>Woman, Woman1 and Woman2</em>
    </p>
</p>

### 直方图匹配效果分析
由于使用的匹配直方图并非均衡直方图，而是由原始图片特性所得到的自适应直方图，在进行直方图匹配后，
既实现了图像增强的效果，又保留了原始图像的灰度分布，使增强图像明暗适当。

## 三、局部直方图增强
对Elain和Lena图像进行7x7的局部直方图增强，相关参数设定如下：

```
E = 2;      
k0=0.6;
k1=0.02;
k2=0.4;
```

局部直方图增强效果如下：
![Image1](https://github.com/an1006634493/hw3/blob/master/img/stg_elain.bmp)
em
![Image1](https://github.com/an1006634493/hw3/blob/master/img/stg_lena.bmp)
