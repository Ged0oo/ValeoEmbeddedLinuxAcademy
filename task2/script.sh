#!/bin/bash

# List all groups on your machine
cut -d: -f1 /etc/group

# Create a group named "sprints" and add your user to it
sudo groupadd sprints
sudo usermod -a -G sprints $USER

# Change the owner group of the script you created before to the "sprints" group
sudo chown :sprints $(pwd)/script.sh