#set term postscript eps enhanced color solid
#set output 'sw.eps'
set terminal postscript eps color enhanced 'Courier-New,bold' 28 lw 3
#set terminal png notransparent nocrop enhanced 
set size 1.8,1.8

set lmargin 10.4
set rmargin 3.4

set title "Residual 1" font "Typewriter bold, 36"

set output './res1.ps'
set format cb "%4.1f"
set ticslevel 0
set cbtics border in scale 0,0 mirror norotate  offset character 0, 0, 0
#set cbrange [0:8]
#set colorb vert user size 0.02, 0.75
set view map
set samples 25, 25
set isosamples 50, 50
set palette color
set surface
set pm3d explicit at s
set pm3d at b
set contour base
set cntrparam bspline
#set cntrparam levels auto 10
#set title "4 data columns x/y/z/color"
set xlabel "a axis"
set ylabel "b axis"
set zlabel "res1 axis"
set zlabel  offset character 2, 0, 0 font "" textcolor lt -1 norotate
#set style data lines
set style data pm3d
#set palette rgbformulae 30,31,32
set palette defined ( 0 0.05 0.05 0.2, 0.1 0 0 1, 0.25 0.7 0.85 0.9,\
     0.4 0 0.75 0, 0.5 1 1 0, 0.7 1 0 0, 0.9 0.6 0.6 0.6,\
          1 0.95 0.95 0.95 )

##set palette defined ( 0 0 1 0, 0.3333 0 0 1, 0.6667 1 0 0,\
#     1 1 0.6471 0 )
#set palette defined ( 0 0 0 0, 0.25 0 0 1, 0.5 0 1 0,\
#     0.75 1 0 0, 1 1 1 1 )
set xrange [ 0.0 : 0.3 ]  noreverse nowriteback
set yrange [ 0.0 : 0.3 ]  noreverse nowriteback
#set zrange [ -1.0000 : 1.0000 ]   noreverse nowriteback
splot "./res1.dat" using 1:2:3 notitle #with pm3d 




