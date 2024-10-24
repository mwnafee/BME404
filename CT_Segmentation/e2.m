theta1 = 0:10:170; 
[R1,x1] = radon(P,theta1); 
num_angles_R1 = size(R1,2);
% num_angles_R1 = 18
theta2 = 0:5:175; 
[R2,x2] = radon(P,theta2);
num_angles_R2 = size(R2,2)
% num_angles_R2 = 36
theta3 = 0:2:178; 
[R3,xp] = radon(P,theta3); 
num_angles_R3 = size(R3,2)
% num_angles_R3 = 90

subplot 311
imagesc(theta3,xp,R3)
colormap(hot)
colorbar
xlabel('Parallel Rotation Angle - \theta (degrees)'); 
ylabel('Parallel Sensor Position - x\prime (pixels)');
subplot 312
R3(125:126,:)=0;
imagesc(theta3,xp,R3)
colormap(hot)
colorbar
xlabel('Parallel Rotation Angle - \theta (degrees)'); 
ylabel('Parallel Sensor Position - x\prime (pixels)');
subplot 313
R3=medfilt2(R3,'symmetric');
imagesc(theta3,xp,R3)
colormap(hot)
colorbar
xlabel('Parallel Rotation Angle - \theta (degrees)'); 
ylabel('Parallel Sensor Position - x\prime (pixels)');