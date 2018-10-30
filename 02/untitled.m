clear;

fid2 = fopen('TCU049.txt');

wf = textscan(fid2,'%f %f %f %f', 'CommentStyle','#');
fclose (fid2);

plot(wf{:,1},wf{:,2},'r');
hold on;

plot(wf{:,1},wf{:,3},'b');
hold on;


plot(wf{:,1},wf{:,4},'g');
