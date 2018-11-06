gmt makecpt -T0.1/500/1 -Crainbow -Z > depth.cpt

gmt psbasemap -R119/123/21/26 -Jm3 -B1 -Xc -Yc -K > exam.ps
gmt pscoast -R -J -Df -Ia -W1 -O -K >> exam.ps
awk -F'[,=]' 'NR>5 {print $6, $8, $14}' station.txt | gmt psxy -R -J -Sc0.25 -Cdepth.cpt -O >> exam.ps