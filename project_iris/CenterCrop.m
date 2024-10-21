
function Ic= CenterCrop(I,crop_size)
[h w]=size(I);


hc=crop_size(1);
wc=crop_size(2);
center_x_1=round(h/2)-round(hc/2)+1;
center_x_2=round(h/2)+round(hc/2);
center_y_1=round(w/2)-round(wc/2)+1;
center_y_2=round(w/2)+round(wc/2);
Ic=I(center_x_1:center_x_2,center_y_1:center_y_2);

end