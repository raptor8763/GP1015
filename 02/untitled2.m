clear;

load Tai_coast

fid1 = fopen('921_eq_info_simple.txt');
% data format: code,Int,Dist,Vgal,NSgal,Long,Lat
c = textscan(fid1,'%s %f %f %f %f %f %f %f');
fclose (fid1);

plot(Tai_coast(:,1),Tai_coast(:,2));
hold on;

plot(120.82,23.85,'r*','MarkerSize',20);
plot(c{7},c{8},'bd');

text(c{7},c{8},num2str(c{2}));
