#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
COLOR_01="#fbf1c7"           # HOST
COLOR_02="#cc241d"           # SYNTAX_STRING
COLOR_03="#98971a"           # COMMAND
COLOR_04="#d79921"           # COMMAND_COLOR2
COLOR_05="#458588"           # PATH
COLOR_06="#b16286"           # SYNTAX_VAR
COLOR_07="#689d6a"           # PROMP
COLOR_08="#7c6f64"           #

COLOR_09="#928374"           #
COLOR_10="#9d0006"           # COMMAND_ERROR
COLOR_11="#79740e"           # EXEC
COLOR_12="#b57614"           #
COLOR_13="#076678"           # FOLDER
COLOR_14="#8f3f71"           #
COLOR_15="#427b58"           #
COLOR_16="#3c3836"           #

BACKGROUND_COLOR="#fbf1c7"   # Background Color
FOREGROUND_COLOR="#3c3836"   # Text
CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
PROFILE_NAME="Gruvbox"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
function gogh_colors () {
    echo ""
    echo -e "\033[0;30m█████\\033[0m\033[0;31m█████\\033[0m\033[0;32m█████\\033[0m\033[0;33m█████\\033[0m\033[0;34m█████\\033[0m\033[0;35m█████\\033[0m\033[0;36m█████\\033[0m\033[0;37m█████\\033[0m"
    echo -e "\033[0m\033[1;30m█████\\033[0m\033[1;31m█████\\033[0m\033[1;32m█████\\033[0m\033[1;33m█████\\033[0m\033[1;34m█████\\033[0m\033[1;35m█████\\033[0m\033[1;36m█████\\033[0m\033[1;37m█████\\033[0m"
    echo ""
}

function curlsource() {
    f=$(mktemp -t curlsource)
    curl -o "$f" -s -L "$1"
    source "$f"
    rm -f "$f"
}

SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PARENT_PATH="$(dirname "$SCRIPT_PATH")"

if [ -e $PARENT_PATH"/apply-colors.sh" ]; then
    source $PARENT_PATH"/apply-colors.sh"
else
        if [ $(uname) = "Darwin" ]; then
        # OSX ships with curl and ancient bash
        # Note: here, sourcing directly from curl does not work
        curlsource https://raw.githubusercontent.com/Mayccoll/Gogh/master/apply-colors.sh
    else
        # Linux ships with wget
        source <(wget -O - https://raw.githubusercontent.com/Mayccoll/Gogh/master/apply-colors.sh)
    fi
fi
