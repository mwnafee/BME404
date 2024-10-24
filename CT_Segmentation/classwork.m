P = phantom(256); %256 is 256x256 picture
imshow(P);
%%
theta1 = 0:10:170;
[R1,x1] = radon(P,theta1);
num_angles_R1 = size(R1,2);

theta2 = 0:5:175;
[R2,x2] = radon(P,theta2);
num_angles_R2 = size(R2,2)

theta3 = 0:2:178;
[R3,x3] = radon(P,theta3);
num_angles_R3 = size(R3,2);

theta4 = 0:0.5:90;
[R4,x4] = radon(P,theta4);
num_angles_R4 = size(R4,2);

subplot 311
imagesc(theta1,x1,R1);
colormap(hot);
colorbar
xlabel('Fan Rotation Angle (degrees) 18 angles')
ylabel('Fan Sensor Position (degrees)')

subplot 312
imagesc(theta2,x2,R2);
colormap(hot);
colorbar
xlabel('Fan Rotation Angle (degrees) 36 angles')
ylabel('Fan Sensor Position (degrees)')

subplot 313
imagesc(theta3,x3,R3);
colormap(hot);
colorbar
xlabel('Fan Rotation Angle (degrees) 90 angles')
ylabel('Fan Sensor Position (degrees)')

%%
output_size = max(size(P));
dtheta1 = theta1(2) - theta1(1);
I1 = iradon(R1,dtheta1,output_size);
dtheta2 = theta2(2) - theta2(1);
I2 = iradon(R2,dtheta2,output_size);
dtheta3 = theta3(2) - theta3(1);
I3 = iradon(R3,dtheta3,output_size);
dtheta4 = theta4(2) - theta4(1);
I4 = iradon(R4,dtheta4,output_size);

figure
subplot(221)
imshow(I1)
title(' no Proj. Angle=18 deg upto 180')
subplot(222)
imshow(I2)
title('no Proj. Angle=36 deg upto 180')
subplot(223)
imshow(I3)
title('no Proj. Angle=90 deg upto 180')
subplot(224)
imshow(I4)
title('no Proj. Angle=90 deg upto 90')
%%
D = 250;
dsensor1 = 2;
[F1, sensor_pos1, fan_rot_angles1] = fanbeam(P,D,'FanSensorSpacing',dsensor1);

D = 250;
dsensor2 = 1;
[F11, sensor_pos11, fan_rot_angles11] = fanbeam(P,D,'FanSensorSpacing',dsensor2);

D = 500;
dsensor3 = 2;
[F2, sensor_pos2, fan_rot_angles2] = fanbeam(P,D,'FanSensorSpacing',dsensor3);

D = 500;
dsensor4 = 0.5;
[F21, sensor_pos21, fan_rot_angles21] = fanbeam(P,D,'FanSensorSpacing',dsensor4);

subplot 421
imagesc(fan_rot_angles1, sensor_pos1, F1)
colormap(hot)
colorbar
title('D = 250, dsensor = 2');
xlabel('Fan Rotation Angle (degrees)')
ylabel('Fan Sensor Position (degrees)')

subplot 242
imagesc(fan_rot_angles11, sensor_pos11, F11)
colormap(hot)
colorbar
title('D = 250, dsensor = 1');
xlabel('Fan Rotation Angle (degrees)')
ylabel('Fan Sensor Position (degrees)')

subplot 423
imagesc(fan_rot_angles2, sensor_pos2, F2)
colormap(hot)
colorbar
title('D = 500, dsensor = 2');
xlabel('Fan Rotation Angle (degrees)')
ylabel('Fan Sensor Position (degrees)')

subplot 424
imagesc(fan_rot_angles21, sensor_pos21, F21)
colormap(hot)
colorbar
title('D = 500, dsensor = 0.5');
xlabel('Fan Rotation Angle (degrees)')
ylabel('Fan Sensor Position (degrees)')

%%
Ifan1 = ifanbeam(F1,250,'FanSensorSpacing',dsensor1,'OutputSize',output_size);
Ifan2 = ifanbeam(F11,250,'FanSensorSpacing',dsensor2,'OutputSize',output_size);
Ifan3 = ifanbeam(F2,500,'FanSensorSpacing',dsensor3,'OutputSize',output_size);
Ifan4 = ifanbeam(F21,500,'FanSensorSpacing',dsensor4,'OutputSize',output_size);

%%
subplot 241
imagesc(fan_rot_angles1, sensor_pos1, F1)
colormap(hot)
colorbar
title('D = 250, dsensor = 2');
xlabel('Fan Rotation Angle (degrees)')
ylabel('Fan Sensor Position (degrees)')

subplot 242
imagesc(fan_rot_angles11, sensor_pos11, F11)
colormap(hot)
colorbar
title('D = 250, dsensor = 1');
xlabel('Fan Rotation Angle (degrees)')
ylabel('Fan Sensor Position (degrees)')

subplot 243
imagesc(fan_rot_angles2, sensor_pos2, F2)
colormap(hot)
colorbar
title('D = 500, dsensor = 2');
xlabel('Fan Rotation Angle (degrees)')
ylabel('Fan Sensor Position (degrees)')

subplot 244
imagesc(fan_rot_angles21, sensor_pos21, F21)
colormap(hot)
colorbar
title('D = 500, dsensor = 0.5');
xlabel('Fan Rotation Angle (degrees)')
ylabel('Fan Sensor Position (degrees)')
subplot 245
imshow(Ifan1)
title('Proj. Angle=18 deg')
subplot 246
imshow(Ifan2)
title('Proj. Angle=24 deg')
subplot 247
imshow(Ifan3)
title('Proj. Angle=90 deg')
subplot 248
imshow(Ifan4)
title('Proj. Angle=90 deg')