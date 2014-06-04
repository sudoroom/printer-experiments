#!/bin/bash

# probably only useful for me, sorry
export PATH=/usr/bin:/usr/bin/core_perl:/usr/bin/vendor_perl

# always execute in THIS dir
self=$(readlink -e "$0") || exit 1
self=$(dirname "${self}") || exit 1
cd "$self"

name=comb

slic3r \
	 --layer-height 0.25 \
	 --perimeters 3 \
	 --solid-layers 3 \
	 --nozzle-diameter 0.35 \
	 --filament-diameter 1.75 \
	 --temperature 220 \
	 --print-center 100,100 \
	 --skirts 3 \
	 --fill-density 0.12 \
	 -o ${name}.gcode comb_gel_16.stl
