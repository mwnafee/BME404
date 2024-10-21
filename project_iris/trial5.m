clc; clear; close;
I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\011\R\S5011R02.jpg");
I_blur=BlurryMotion(I);
subplot 211
imshow(I);
title("Original")
subplot 212
imshow(I_blur);
title("Blurred from motion")