clc;clear;close
I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\014\R\S5014R02.jpg");
subplot 321

imshow(I)
title("Original")
crop_size=[300 450];
[I1 I2 I3 I4 Ic]= FiveCrop(I, crop_size);
subplot 322

imshow(I1)
title("top right")
subplot 323
imshow(I2)
title("bottom right")
subplot 324
imshow(I3)
title("top left")
subplot 325
imshow(I4)
title("bottom left")
subplot 326
imshow(Ic)
title("center crop")
