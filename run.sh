#!/bin/bash

# Run program and write out data.txt
./Orbit.x > data.txt 

# Plot orbits
gnuplot -p plot.gp 

