#!/bin/bash

# In case a build is needed
docker build -t kicad .

# If the build succeeds
if [[ $? -ne 0 ]]; then
    echo "Build failed. Exiting."
    exit 1
fi


# Run the container and bind the user home directory to this dir
docker run --rm -d \
        -v "$(dirname "$0"):/home/ubuntu/" \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e "DISPLAY=unix${DISPLAY}" \
        kicad kicad
