output_size = max(size(P));
dtheta1 = theta1(2) - theta1(1);
I1 = iradon(R1,dtheta1,output_size);
dtheta2 = theta2(2) - theta2(1);
I2 = iradon(R2,dtheta2,output_size);
dtheta3 = theta3(2) - theta3(1);
I3 = iradon(R3,dtheta3,output_size);
figure
subplot(131)
imshow(I1)
title('Proj. Angle=18 deg')
subplot(132)
imshow(I2)
title('Proj. Angle=24 deg')
subplot(133)
imshow(I3)
title('Proj. Angle=90 deg')
