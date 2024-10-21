% color jitter
clear; clc;close;
I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\002\R\S5002R02.jpg");
brightness=160;
contrast=0.2;
hue=0;
saturation=0;
subplot 321
imshow(I);
I1=I+brightness;
subplot 322
imshow(I1);
I2=imadjust(I1,[0,1],[contrast,1]);
subplot 323
imshow(I2);
if length(size(I))==3
    hsvI=rgb2hsv(I2);
    hsvI(:,:,1)=hsvI(:,:,1)*hue;
    I3=hsv2rgb(hsvI);
    subplot 324
    imshow(I3)
end


if length(size(I))==3
    hsvI=rgb2hsv(I3);
    hsvI(:,:,2)=hsvI(:,:,2)*saturation;
    I4=hsv2rgb(hsvI);
    subplot 325
    imshow(I4)
end

if length(size(I))==3
    I_changed=I2;
else
    I_changed=I2;
end
[h w]=size(I)
crop_size=[200 100];
hc=crop_size(1);
wc=crop_size(2);
x_start=randi((h-hc));
x_end=x_start+hc-1;
y_start=randi((w-wc));
y_end=y_start+wc-1;
I_big=I;
I_big(x_start:x_end,y_start:y_end)=I_changed(x_start:x_end,y_start:y_end);
subplot 326
imshow(I_big)
    

