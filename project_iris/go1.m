clear; clc;close;

I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\008\L\S5008L04.jpg");
subplot 321
imshow(I);
[h w]=size(I);

crop_size=[200 400];
hc=crop_size(1);
wc=crop_size(2);
I1=I(1:hc,1:wc);
subplot 322
imshow(I1);
x_lim=h-hc+1;
y_lim=w-wc+1;
I2=I(x_lim:h,y_lim:w);
subplot 323
imshow(I2);
I3=I(1:hc,y_lim:w);
subplot 324
imshow(I3);
I4=I(x_lim:h,1:wc);
subplot 325
imshow(I4);
center_x_1=round(h/2)-round(hc/2)+1;
center_x_2=round(h/2)+round(hc/2);
center_y_1=round(w/2)-round(wc/2)+1;
center_y_2=round(w/2)+round(wc/2);
Ic=I(center_x_1:center_x_2,center_y_1:center_y_2);
subplot 326
imshow(Ic);
