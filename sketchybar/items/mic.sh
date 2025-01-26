#!/usr/bin/env bash

COLOR="$COMMENT"

sketchybar \
    --add item mic right \
    --set mic \
    icon.color="$COLOR" \
    icon.padding_left=10 \
    background.height=26 \
    background.corner_radius="$CORNER_RADIUS" \
    background.padding_right=5 \
    background.border_width="$BORDER_WIDTH" \
    background.border_color="$COLOR" \
    background.color="$BAR_COLOR" \
    background.drawing=on \
    script="$PLUGIN_DIR/mic.sh" \
    click_script="$PLUGIN_DIR/mic_click.sh" \
    update_freq=3 \
    --subscribe mic volume_change