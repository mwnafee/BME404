clear; clc;close;
I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\002\R\S5002R02.jpg");
brightness=0.45;
contrast=0.2;
hue=0;
saturation=0;
subplot 121
imshow(I)
title("Original")
[I_jittered] = ColorJitter(I,brightness,contrast,hue,saturation);
subplot 122
imshow(I_jittered);
title("Glared photo")