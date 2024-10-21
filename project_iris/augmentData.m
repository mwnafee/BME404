function [I_aug]= augmentData(I)
crop_size=[400 600];
[I_rc] = RandomCrop(I, crop_size);
Ir = RandomRotate(I_rc);
I_blur=BlurryMotion(Ir);
brightness=0.45;
contrast=0.2;
hue=0;
saturation=0;
[I_jittered] = ColorJitter(I_blur,brightness,contrast,hue,saturation);
I_aug=I_jittered;

end