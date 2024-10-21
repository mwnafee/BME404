clc; clear; close;
% Development of Wavement Refinment Block (WRB) with Haar Wavelet Transform
I=imread("C:\Drive\BME404\project_iris\CASIA-Iris\CASIA-Iris-Thousand\014\R\S5014R05.jpg");
figure
imshow(I)
title("Original")
fLL=[1 1;1 1];

yLL_s1=conv2(I,fLL,'valid');
yLL=yLL_s1(1:2:end,1:2:end);

fLH=[-1 -1;1 1];

yLH_s1=conv2(I,fLH,'valid');
yLH=yLH_s1(1:2:end,1:2:end);

fHL=[-1 1;-1 1];

yHL_s1=conv2(I,fHL,'valid');
yHL=yHL_s1(1:2:end,1:2:end);

fHH=[1 -1;-1 1];

yHH_s1=conv2(I,fHH,'valid');
yHH=yHH_s1(1:2:end,1:2:end);

dim=size(yHH);
yWRB=zeros(dim(1),dim(2),4);
yWRB(:,:,1)=yLL;
yWRB(:,:,2)=yLH;
yWRB(:,:,3)=yHL;
yWRB(:,:,4)=yHH;

figure
subplot 221
imshow(yLL,[])
title("Lowpass filtered")

subplot 222
imshow(yLH)
title("Highpass-1 filtered")

subplot 223
imshow(yHL)
title("Highpass-2 filtered")

subplot 224
imshow(yHH)
title("Highpass-3 filtered")