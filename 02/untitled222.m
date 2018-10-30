clear;

fid2 = fopen('TCU049.txt');

wf = textscan(fid2,'%f %f %f %f', 'CommentStyle','#');
fclose (fid2);

plot(wf{:,1},wf{:,2},'r');
hold on;

plot(wf{:,1},wf{:,3},'b');
hold on;
plot(wf{:,1},wf{:,4},'g');

hold off;
subplot(3,1,1)
plot(wf{:,1},wf{:,2},'r');
axis([0,90,-300,300]);
title('Tcu490');
xlabel('sec');
ylabel('Z(gal)');
grid on;

hold off;

subplot(3,1,2)
plot(wf{:,1},wf{:,3},'g');
axis([0,90,-300,300]);

xlabel('sec');
ylabel('NS(gal)');
grid on;

subplot(3,1,3)
plot(wf{:,1},wf{:,4},'b');
axis([0,90,-300,300]);
xlabel('sec')
ylabel('EW(gal)');
grid on;

