#!/bin/bash

# This script provides an example for generating Gerber and drill files
# using the KiCad Docker container.

# In case a build is needed
docker build -t kicad .

# Run the container and bind the user home directory to this dir
docker run -it --rm \
        -v "$(pwd):/home/ubuntu/" \
        kicad python3 gen_gerber_and_drill_files_board.py \
                        pcb1.kicad_pcb \
                        pcb2.kicad_pcb 
