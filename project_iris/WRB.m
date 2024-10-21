function yWRB=WRB(I)
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
end