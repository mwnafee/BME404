function [I_jittered] = ColorJitter(I,brightness,contrast,hue,saturation)
brightness=100+brightness*(200-100);
I1=I+brightness;

I2=imadjust(I1,[0,1],[contrast,1]);

if length(size(I))==3
    hsvI=rgb2hsv(I2);
    hsvI(:,:,1)=hsvI(:,:,1)*hue;
    I3=hsv2rgb(hsvI);
    
end


if length(size(I))==3
    hsvI=rgb2hsv(I3);
    hsvI(:,:,2)=hsvI(:,:,2)*saturation;
    I4=hsv2rgb(hsvI);
    
end

if length(size(I))==3
    I_changed=I2;
else
    I_changed=I2;
end
[h w]=size(I);
crop_size=[200 100];
hc=crop_size(1);
wc=crop_size(2);
x_start=randi((h-hc));
x_end=x_start+hc-1;
y_start=randi((w-wc));
y_end=y_start+wc-1;
I_big=I;
I_big(x_start:x_end,y_start:y_end)=I_changed(x_start:x_end,y_start:y_end);
I_jittered=I_big;
end
