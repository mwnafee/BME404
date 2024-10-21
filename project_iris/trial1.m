clear; clc;close;
%random crop
I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\008\L\S5008L04.jpg");
subplot 211
imshow(I);
title("Original")
crop_size=[300 500];
I_rc=RandomCrop(I, crop_size);
subplot 212
imshow(I_rc);
title("Randomly Cropped")
