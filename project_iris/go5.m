clear; clc;close;
% Random Rotate
I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\008\L\S5008L04.jpg");
subplot 121
imshow(I);
rotation= -3 + (3+3)*rand(1,1)
Ir=imrotate(I,rotation,'bilinear','crop');
subplot 122
imshow(Ir);