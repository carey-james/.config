#!/usr/bin/env bash

COLOR="$BLUE"

sketchybar --add item download right \
	--set download update_freq=1 \
	icon.padding_left=10 \
	icon.color="$COLOR" \
	icon="" \
	label.color="$COLOR" \
	label.padding_right=10 \
	align=center \
	background.height=26 \
	background.corner_radius="$CORNER_RADIUS" \
	background.padding_right=5 \
	background.border_width="$BORDER_WIDTH" \
	background.border_color="$COLOR" \
	background.color="$BAR_COLOR" \
	background.drawing=on \
	script="$PLUGIN_DIR/download.sh"