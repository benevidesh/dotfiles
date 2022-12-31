#!/bin/bash

# ====================CONFIG THIS =============================== #

BACKGROUD_COLOR="#161821"    # Background Color
FOREGROUND_COLOR="#c6c8d1"   # Text

COLOR_01="#1e2132"
COLOR_02="#e27878"
COLOR_03="#b4be82"
COLOR_04="#e2a478"
COLOR_05="#84a0c6"
COLOR_06="#a093c7"
COLOR_07="#89b8c2"
COLOR_08="#c6c8d1"
COLOR_09="#6b7089"
COLOR_10="#e98989"
COLOR_11="#c0ca8e"
COLOR_12="#e9b189"
COLOR_13="#91acd1"
COLOR_14="#ada0d3"
COLOR_15="#95c4ce"
COLOR_16="#d2d4de"
# =============================================================== #


# |
# | Convert RGB to gnome colors
# | ===========================================
function gnome_color () {
    AA=${1:1:2}
    BB=${1:3:2}
    CC=${1:5:2}

    echo "#${AA}${AA}${BB}${BB}${CC}${CC}"
}



# |
# | Set gnome Variables
# | ===========================================

BACKGROUD_COLOR=$(gnome_color $BACKGROUD_COLOR)
FOREGROUND_COLOR=$(gnome_color $FOREGROUND_COLOR)

COLOR_01=$(gnome_color $COLOR_01)
COLOR_02=$(gnome_color $COLOR_02)
COLOR_03=$(gnome_color $COLOR_03)
COLOR_04=$(gnome_color $COLOR_04)
COLOR_05=$(gnome_color $COLOR_05)
COLOR_06=$(gnome_color $COLOR_06)
COLOR_07=$(gnome_color $COLOR_07)
COLOR_08=$(gnome_color $COLOR_08)

COLOR_09=$(gnome_color $COLOR_09)
COLOR_10=$(gnome_color $COLOR_10)
COLOR_11=$(gnome_color $COLOR_11)
COLOR_12=$(gnome_color $COLOR_12)
COLOR_13=$(gnome_color $COLOR_13)
COLOR_14=$(gnome_color $COLOR_14)
COLOR_15=$(gnome_color $COLOR_15)
COLOR_16=$(gnome_color $COLOR_16)



# |
# | Apply Variables
# | ===========================================

gsettings set io.elementary.terminal.settings background "${BACKGROUD_COLOR}"
gsettings set io.elementary.terminal.settings foreground "${FOREGROUND_COLOR}"
gsettings set io.elementary.terminal.settings cursor-color "${FOREGROUND_COLOR}"
gsettings set io.elementary.terminal.settings palette "${COLOR_01}:${COLOR_02}:${COLOR_03}:${COLOR_04}:${COLOR_05}:${COLOR_06}:${COLOR_07}:${COLOR_08}:${COLOR_09}:${COLOR_10}:${COLOR_11}:${COLOR_12}:${COLOR_13}:${COLOR_14}:${COLOR_15}:${COLOR_16}"
