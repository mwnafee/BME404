%%
P=phantom(256);
imshow(P)
%%
theta1 = 0:10:170;
[R1,x1] = radon(P,theta1);
num_angles_R1 = size(R1,2);
%%
theta2 = 0:5:175;
[R2,x2] = radon(P,theta2);
num_angles_R2 = size(R2,2);
%%
Rx=zeros(size(R2));
k=1;
q=1;
for i=1:36
    i;
    k;
    if k==1
        if i==1
            Rx(:,i)=R1(:,q); %eq. (A)
        else
            Rx(:,i)=(R1(:,q-1)+R1(:,q))/2;  %eq. (B)
        end
        k=0;
    else

        Rx(:,i)=R1(:,q);  %eq. (C)

        q=q+1;
        k=1;

    end
    Rx(184,i);

end
% This is basically an interpolation system. A new sample is being added
% between two existing samples. Let us imagine we only have 5 existing
% samples. Initially k is set k=1, when we just enter the loop i.e. i=1,
% the first column of Rx is made equal to the first column of R1 at eq(A). Then k is
% set to zero. In this case, the q is never incremented.
% When i is incremented to 2 and k was set to 0 in previous iteration of
% the loop, we can see the 2nd sample of Rx is made equal to 1st sample of
% R1 at eq(C). q is incremented, k is set to 1. In the next iteration of
% the loop, the 3rd sample of Rx is taken to be the average of 1st and 2nd
% samples of R1 with k set to 0. For the 4th iteration, 4th sample of Rx is
% set to be equal to 2nd sample of R1, q incremented to 2,k=1. The 5th
% sample is average of 2nd and 3rd samples.
% Here the odd samples (except for the first one) of Rx are being calculated to algebraic averages of
% it's neighbouring samples. This is linear interpolation.
%%
output_size = max(size(P));
dtheta1 = theta1(2) - theta1(1);
dtheta2 = theta2(2) - theta2(1);

I1 = iradon(R1,dtheta1,output_size);
Ix = iradon(Rx,dtheta2,output_size);
I2 = iradon(R2,dtheta2,output_size);


%%
subplot(231)
imagesc(theta1,x1,R1)
subplot(232)
imagesc(theta2,x2,Rx)
subplot(233)
imagesc(theta2,x2,R2)

subplot(234)
imshow(I1)
subplot(235)
imshow(Ix)
subplot(236)
imshow(I2)
% As Rx is an interpolated version of R1 with dimensions increased to that
% of R2, we get similar quality to R2
