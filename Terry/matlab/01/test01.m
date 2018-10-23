clear 
load wave.txt
%xx=wave(:,1);
%yy=wave(:,2);
%plot(xx,yy);

%[max_yy,index_yy]=max(yy);
%hold on
%plot(xx(index_yy),yy(index_yy),'ro');

d=0;
for i=1:0.5:10
    d=d+i;
end