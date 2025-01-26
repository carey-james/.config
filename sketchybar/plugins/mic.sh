#!/bin/bash

source "$HOME/.config/sketchybar/variables.sh"

# Attempt to get the current input device name
MIC_NAME=$(SwitchAudioSource -t input -c)
# I just want the first word, in case it's too long
MIC_NAME=$(echo $MIC_NAME | awk '{print $1}')

# When no microphone is connected, SwitchAudioSource gives me back random
# characters and sketchybar shows "Warning: Malformed UTF-8 string"
# Validate MIC_NAME as UTF-8, replace invalid sequences with a '?', then compare with original
VALIDATED_MIC_NAME=$(echo "$MIC_NAME" | iconv -f UTF-8 -t UTF-8//IGNORE)

# Get the current microphone volume
MIC_VOLUME=$(osascript -e 'input volume of (get volume settings)')

# Check if MIC_NAME is not meaningful
if [[ "$MIC_NAME" != "$VALIDATED_MIC_NAME" || -z "$MIC_NAME" ]]; then
  # If the mic name is not valid or empty
  sketchybar --set mic label="" icon="󱦉" icon.color="$YELLOW" label.color="$YELLOW"
else
  # Update SketchyBar with the microphone's name and volume
  if [[ $MIC_VOLUME -eq 0 ]]; then
    sketchybar --set mic icon="" icon.color="$COMMENT"
  elif [[ $MIC_VOLUME -gt 0 && $MIC_VOLUME -lt 101 ]]; then
    sketchybar --set mic icon="" icon.color="$RED"
  fi
fi