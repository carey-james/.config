#!/usr/bin/env sh

# Color Palette
# Monokai
# Colors are in the format AAFFFFFF so don't preview correctly
BLACK=0xff212117
WHITE=0xfff7f7f7
MAGENTA=0xfff92472
BLUE=0xff67d8ef
TAN=0xff74705d
PURPLE=0xffac80ff
CYAN=0xff67d8ef
GREEN=0xffa6e22c
YELLOW=0xffe7db74 
ORANGE=0xfffd9621
RED=0xfff83535
BAR_COLOR=0xff282923
COMMENT=0xfff8f8f2

# Tokyonight Night
# BLACK=0xff24283b
# WHITE=0xffa9b1d6
# MAGENTA=0xffbb9af7
# BLUE=0xff7aa2f7
# CYAN=0xff7dcfff
# GREEN=0xff9ece6a
# YELLOW=0xffe0af68
# ORANGE=0xffff9e64
# RED=0xfff7768e
# BAR_COLOR=0xff1a1b26
# COMMENT=0xff565f89

# Tokyonight Day
# BLACK=0xffe9e9ed
# WHITE=0xff3760bf
# MAGENTA=0xff9854f1
# BLUE=0xff2e7de9
# CYAN=0xff007197
# GREEN=0xff587539
# YELLOW=0xff8c6c3e
# ORANGE=0xffb15c00
# RED=0xfff52a65
# BAR_COLOR=0xffe1e2e7

TRANSPARENT=0x00000000

# General bar colors
ICON_COLOR=$WHITE  # Color of all icons
LABEL_COLOR=$WHITE # Color of all labels

ITEM_DIR="$HOME/.config/sketchybar/items"
PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

FONT="JetBrainsMono Nerd Font"

PADDINGS=3

POPUP_BORDER_WIDTH=2
POPUP_CORNER_RADIUS=11
POPUP_BACKGROUND_COLOR=$BLACK
POPUP_BORDER_COLOR=$COMMENT

CORNER_RADIUS=15
BORDER_WIDTH=2

SHADOW=on

SPACE_ICONS=("" "" "" "" "" "󰰇" "一" "二" "三" "四" "五" "六" "七" "八" "九" "十" "十一" "十二" "十三" "十四" "十五" "十六" "十七" "十八" "十九" "二十")
