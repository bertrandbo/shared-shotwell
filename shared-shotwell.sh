#!/bin/bash

SHARED_DIR="/home/partage/Images"
SHARED_DB="/home/partage/.shotwell"

USER_DIR=`gsettings get org.yorba.shotwell.preferences.files import-dir`

gsettings set org.yorba.shotwell.preferences.files import-dir "$SHARED_DIR"
shotwell -d $SHARED_DB

gsettings set org.yorba.shotwell.preferences.files import-dir "$USER_DIR"
