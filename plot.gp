set term png
set output "orbits.png"
set polar
set size ratio -1
plot 'data.txt' u 1:2 w l title 'e = 0.00',\
     'data.txt' u 1:3 w l title 'e = 0.25',\
     'data.txt' u 1:4 w l title 'e = 0.50'
     
