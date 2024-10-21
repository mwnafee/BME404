I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\008\L\S5008L04.jpg");
subplot 121
imshow(I);
title("Original")
Ir = RandomRotate(I);
subplot 122
imshow(Ir);
title("Improperly Aligned");