output_size = max(size(P));
Ifan1 = ifanbeam(F1,D,'FanSensorSpacing',dsensor1,'OutputSize',output_size);
Ifan2 = ifanbeam(F2,D,'FanSensorSpacing',dsensor2,'OutputSize',output_size);
Ifan3 = ifanbeam(F3,D,'FanSensorSpacing',dsensor3,'OutputSize',output_size);
figure
subplot(131)
imshow(Ifan1)
title('Proj. Angle=18 deg')
subplot(132)
imshow(Ifan2)

title('Proj. Angle=24 deg')
subplot(133)
imshow(Ifan3)
title('Proj. Angle=90 deg')
