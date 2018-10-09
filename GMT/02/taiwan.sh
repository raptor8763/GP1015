
psbasemap -Ba1f1/a1f1::EWNs -Jm2 -R119/123/21/26 -G0/250/250 -K -Yc -Xc> report.ps
pscoast -J -B -R -O -Di -W1 -G250/250/0 -K >> report.ps
#psxy eq.list -R -J -St0.01 -W0.01 -G255/0/0 -O -K>> report.ps
echo 121.15 22.9 15 6 4 CM M:4.6 Depth:5.9KM| pstext -J -B -R -O -K>> report.ps

makecpt -T0/10/1 -Crainbow -Z > depth.cpt

awk '{ if ($4<3) print $1, $2, $3}' eq.list| psxy -R -J -Sc0.01 -Cdepth.cpt -O -K>> report.ps 
awk '{ if ($4<4 && $4>3) print $1, $2, $3}' eq.list| psxy -R -J -Sc0.1 -Cdepth.cpt -O -K>> report.ps
awk '{ if ($4<5 && $4>4) print $1, $2, $3}' eq.list| psxy -R -J -Sc0.3 -Cdepth.cpt -O -K>> report.ps
awk '{ if ($4>5) print $1, $2, $3}' eq.list| psxy -R -J -Sc0.5 -Cdepth.cpt -O >> report.ps

