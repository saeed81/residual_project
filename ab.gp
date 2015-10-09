set terminal postscript eps color enhanced 'Courier-New,bold' 28 lw 3
#set output "Nnewatl.ps"

set output "Nall.ps"

#set title 'WOCE-derived  N '
set size 1.8,1.8

set lmargin 10.4
set rmargin 3.4

#set title "Comparison of temporal average of computed pw and turbulence observation" font "Typewriter, bold 20"
#set xlabel "log_{10} pw (Wm^{-2})" font "Typewriter, bold 20"
#set xlabel "log_{10} ~{pw}^{0.08/=35\-}@^{t}&1 (Wm^{-2})" font "Typewriter, bold 20" 
#set xlabel "log_{10} ~{pw}^{0.08/=35\-}@^{t}&1 (Wm^{-2})" font "Helvetica, bold 10"

set xlabel " N [s^{-1}]" font "arial bold, 36"

#set ylabel "log_{10} ( {/Symbol=18 \362@_{/=11 -H + 100}^{/=11 -H + <depth>}}{/Helvetica{/Symbol r}{/Symbol \145}{dz}} ) (Wm^{-2})" offset 0.1,0.0 font "Helvetica, bold 20"


set ylabel "log_{10} {/Symbol=80 \362@_{/=9.6 -H + 100}^{/=11 -<depth>}&{0.5}{/Helvetica {/Symbol r}{/Symbol \145}{dz}}} Wm^{-2}" offset 2.0,0.0 font "Typew\riter, bold 28"
set ylabel "integrated dissipation rate  log_{10} ( {/Symbol=45 \362@_{/=18 -H + 50}^{/=18 -1000}}&{0.5}{{/Symbol r}{/Symbol \145}d}{z} ) (Wm^{-2})" offset -1.0,0.0 font "arial bold, 26"

set ylabel "integrated dissipation rate  log_{10} ( {/Symbol=45 \362@_{/=18 -H + 100}^{/=18 -H + 1500}}{{/Symbol r}{/Symbol \145}dz} ) (Wm^{-2})" offset -1.0,0.0 font "arial bold, 26"

set ylabel "Depth [m]" offset -1.0,0.0 font "arial bold, 36"


#font "Typewriter, bold 20"
#set ylabel "log_{10} {/Symbol=18 \362@_{/=11 -H + 100}^{/=11 -H + <depth>}{/Symbol r}{/Symbol \145}{dz}} (Wm^{-2})" offset 0.1,0.0 font "Typewriter, bold 20"
set mytics 5
#set xrange [1.0e-7:3.0e-2]
#set yrange [1.0e-7:3.0e-2]
#set xrange [-4:-1]
#set yrange [-4:-1]
#set logscale x
#set logscale y
set key spacing 1.2
#set yrange [-4.5:-0.5] #old
#set xrange [-4.5:-0.5] #old 
#set yrange [-6.5:-0.5]
#set xrange [-6.5:-0.5]
#set xrange [2.0e-5:1.2e-2]

set xrange [0.0e0:1.2e-2]


set yrange [] reverse

f(x)=x
set mytics 1
set mxtics 5
set mxtics 1
set grid xtics ytics mxtics mytics
set xzeroaxis -1
set key bottom right Left box
#unset key
#h(x) = a*x+b
#fit h(x) "<fcorpw>" using 1:2 via a,b
#set label 1 sprintf("a = %3.4f",a) at -2.5,-1.3 font "Courier-New bold, 28"
#set label 1 sprintf("a = %3.4f",a) at -3.0,-2.5 font "Helvetica, bold 20"
#set label 2 sprintf("b = %3.4f",b) at -3.0,-1.4 font "arialbd,bold 15"

#plot "bfave.dat" u 2:1 w l lt 1 lc 1 lw 2 title 'N' 

#plot "natl1.dat" u 2:1 w l lt 1 lc 7 lw 3 notitle

#set parametric
#const=0.008
#set trange [0.00:1.2e-2]

plot "bfsa.dat" u 2:1 w l lt 1 lc 1 lw 3 title 'South Atlantic Subtropical N(z)',"bfna.dat" u 2:1 w l lt 1 lc 3 lw 3 title 'North Atlantic Subpolar N(z)',"const.dat" u 2:1 w l lt 1 lc 7 lw 4 title 'Vertically constant N(z)'

#'lat=-21^{\circ} lon=341.50' 
 



