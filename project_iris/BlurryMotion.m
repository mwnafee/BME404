
function I_blur=BlurryMotion(I)
h = fspecial('motion', 25, 20);
I_blur = imfilter(I, h);
end