
function [I_rc] = RandomCrop(I, crop_size)
[h w]=size(I);

hc=crop_size(1);
wc=crop_size(2);
x_start=randi((h-hc));
x_end=x_start+hc-1;
y_start=randi((w-wc));
y_end=y_start+wc-1;
I_rc=I(x_start:x_end,y_start:y_end);
end