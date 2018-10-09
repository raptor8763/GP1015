out_ps=b.ps
in_data=wave.txt

psxy -R0/120/-150000/150000  -B20/50000NSWE $in_data -Jx0.1/0.00001 -Xc -YC -W1 -O > $out_ps
echo 28.378000 167232.687500| psxy -R -J -B -Sc1 -K -W1/255/0/0>> $out_ps