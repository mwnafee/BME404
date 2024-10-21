% center crop
clear; clc;close;

I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\008\L\S5008L04.jpg");
subplot 121
imshow(I);
[h w]=size(I);

crop_size=[200 400];
hc=crop_size(1);
wc=crop_size(2);
center_x_1=round(h/2)-round(hc/2)+1;
center_x_2=round(h/2)+round(hc/2);
center_y_1=round(w/2)-round(wc/2)+1;
center_y_2=round(w/2)+round(wc/2);
Ic=I(center_x_1:center_x_2,center_y_1:center_y_2);
subplot 122
imshow(Ic);