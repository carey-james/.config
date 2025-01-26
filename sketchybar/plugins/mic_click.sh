#!/bin/bash

source "$HOME/.config/sketchybar/variables.sh"

# This is basically the same as the `toggle_devices()` function in:
# ~/github/dotfiles-latest/sketchybar/felixkratz/plugins/volume_click.sh
toggle_mics() {
  which SwitchAudioSource >/dev/null || exit 0
  source "$CONFIG_DIR/colors.sh"

  args=(--remove '/mic.device\.*/' --set "$NAME" popup.drawing=toggle)
  COUNTER=0
  CURRENT="$(SwitchAudioSource -t input -c)"
  while IFS= read -r device; do
    COLOR=$GREY
    if [ "${device}" = "$CURRENT" ]; then
      COLOR=$WHITE
    fi
    args+=(--add item mic.device.$COUNTER popup."$NAME"
      --set mic.device.$COUNTER label="${device}"
      label.color="$COLOR"
      click_script="SwitchAudioSource -t input -s \"${device}\" && sketchybar --set /mic.device\.*/ label.color=$GREY --set \$NAME label.color=$WHITE --set $NAME popup.drawing=off")
    COUNTER=$((COUNTER + 1))
  done <<<"$(SwitchAudioSource -a -t input)"

  sketchybar -m "${args[@]}" >/dev/null
}

if [ "$BUTTON" = "left" ]; then
  
  # Get the current microphone volume
  MIC_VOLUME=$(osascript -e 'input volume of (get volume settings)')
  # Update SketchyBar with the microphone's name and volume
  if [[ $MIC_VOLUME -eq 0 ]]; then
    sketchybar --set mic icon="" icon.color="$COMMENT"
  elif [[ $MIC_VOLUME -gt 0 ]]; then
    sketchybar --set mic icon="" icon.color="$RED"
  fi
# Check for right-click or shift modifier to show the microphone selection popup
elif [ "$BUTTON" = "right" ] || [ "$MODIFIER" = "shift" ]; then
  toggle_mics
fi