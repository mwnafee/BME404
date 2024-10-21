function [I1 I2 I3 I4 Ic]= FiveCrop(I, crop_size)
[h w]=size(I);


hc=crop_size(1);
wc=crop_size(2);

I1=I(1:hc,1:wc);
x_lim=h-hc+1;
y_lim=w-wc+1;
I2=I(x_lim:h,y_lim:w);
I3=I(1:hc,y_lim:w);
I4=I(x_lim:h,1:wc);
center_x_1=round(h/2)-round(hc/2)+1;
center_x_2=round(h/2)+round(hc/2);
center_y_1=round(w/2)-round(wc/2)+1;
center_y_2=round(w/2)+round(wc/2);
Ic=I(center_x_1:center_x_2,center_y_1:center_y_2);
end