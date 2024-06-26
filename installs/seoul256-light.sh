#!/usr/bin/env bash

export PROFILE_NAME="Seoul256 Light"

export COLOR_01="#4e4e4e"           # Black (Host)
export COLOR_02="#af5f5f"           # Red (Syntax string)
export COLOR_03="#5f885f"           # Green (Command)
export COLOR_04="#af8760"           # Yellow (Command second)
export COLOR_05="#5f87ae"           # Blue (Path)
export COLOR_06="#875f87"           # Magenta (Syntax var)
export COLOR_07="#5f8787"           # Cyan (Prompt)
export COLOR_08="#e4e4e4"           # White

export COLOR_09="#3a3a3a"           # Bright Black
export COLOR_10="#870100"           # Bright Red (Command error)
export COLOR_11="#005f00"           # Bright Green (Exec)
export COLOR_12="#d8865f"           # Bright Yellow
export COLOR_13="#0087af"           # Bright Blue (Folder)
export COLOR_14="#87025f"           # Bright Magenta
export COLOR_15="#008787"           # Bright Cyan
export COLOR_16="#eeeeee"           # Bright White

export BACKGROUND_COLOR="#dadada"   # Background
export FOREGROUND_COLOR="#4e4e4e"   # Foreground (Text)

export CURSOR_COLOR="#4e4e4e" # Cursor

# | ===========================================================================
# | Apply Colors
# | ===========================================================================
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Gogh-Co/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
