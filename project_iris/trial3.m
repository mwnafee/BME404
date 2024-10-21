I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\008\L\S5008L04.jpg");
subplot 121
imshow(I);
crop_size=[200 400];
Ic= CenterCrop(I,crop_size);
subplot 122
imshow(Ic);