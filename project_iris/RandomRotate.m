

function Ir = RandomRotate(I)
rotation= -5 + (5+5)*rand(1,1)
Ir=imrotate(I,rotation,'bilinear','crop');
end