#!/bin/bash

# Define paths
WALLPAPER_DIR=~/dotfiles/wallpaper
LOCK_IMAGE=$WALLPAPER_DIR/screen_locked.png
LOCK_BLURRED=$WALLPAPER_DIR/screen_locked_blurred.png

# Remove old images
rm -f "$LOCK_IMAGE" "$LOCK_BLURRED"

# Take screenshot
scrot "$LOCK_IMAGE"

# Blur it
convert "$LOCK_IMAGE" -blur 5x3 "$LOCK_BLURRED"

# Lock screen
i3lock -i "$LOCK_BLURRED"
