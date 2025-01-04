#!/bin/bash

# Run this script to completely install OpenCV for a RPi 5 with Ubuntu LTS OS

# System update + upgrade
sudo apt update && sudo apt upgrade -y

# Python virtual enviornment
sudo apt install python3-venv -y
python3 -m venv opencv-env
source opencv-env/bin/activate

# Install dependencies
pip3 install opencv-python

# Test OpenCV
python3 -c "import cv2; print(cv2.__version__)"