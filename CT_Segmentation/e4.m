D = 250; 
dsensor1 = 2;
F1 = fanbeam(P,D,'FanSensorSpacing',dsensor1);
dsensor2 = 1;
F2 = fanbeam(P,D,'FanSensorSpacing',dsensor2);
dsensor3 = 0.25;
[F3, sensor_pos3, fan_rot_angles3] = fanbeam(P,D,...
 'FanSensorSpacing',dsensor3);

imagesc(fan_rot_angles3, sensor_pos3, F3)
colormap(hot)
colorbar
xlabel('Fan Rotation Angle (degrees)')
ylabel('Fan Sensor Position (degrees)')