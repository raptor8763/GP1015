clear 
load wave.txt
xx=wave(:,1);
yy=wave(:,2);

gg=wave(1,2)
for i=1:12501
    if yy(i)>gg
       gg=yy(i)
    end 
end
fprintf('%2.0f',i)