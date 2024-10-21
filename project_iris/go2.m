clear; clc;close;
%random crop
I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\008\L\S5008L04.jpg");
subplot 211
imshow(I);
[h w]=size(I)
crop_size=[300 500];
hc=crop_size(1);
wc=crop_size(2);
x_start=randi((h-hc));
x_end=x_start+hc-1;
y_start=randi((w-wc));
y_end=y_start+wc-1;
I_rc=I(x_start:x_end,y_start:y_end);
subplot 212
imshow(I_rc);