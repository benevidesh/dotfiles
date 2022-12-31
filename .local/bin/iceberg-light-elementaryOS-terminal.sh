#!/bin/bash

# ====================CONFIG THIS =============================== #

BACKGROUD_COLOR="#e8e9ec"    # Background Color
FOREGROUND_COLOR="#33374c"   # Text

COLOR_00="#dcdfe7"
COLOR_01="#cc517a"
COLOR_02="#668e3d"
COLOR_03="#c57339"
COLOR_04="#2d539e"
COLOR_05="#7759b4"
COLOR_06="#3f83a6"
COLOR_07="#33374c"
COLOR_08="#8389a3"
COLOR_09="#cc3768"
COLOR_10="#598030"
COLOR_11="#b6662d"
COLOR_12="#22478e"
COLOR_13="#6845ad"
COLOR_14="#327698"
COLOR_15="#262a3f"
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

COLOR_00=$(gnome_color $COLOR_00)
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



# |
# | Apply Variables
# | ===========================================

gsettings set io.elementary.terminal.settings background "${BACKGROUD_COLOR}"
gsettings set io.elementary.terminal.settings foreground "${FOREGROUND_COLOR}"
gsettings set io.elementary.terminal.settings cursor-color "${FOREGROUND_COLOR}"
gsettings set io.elementary.terminal.settings palette "${COLOR_00}:${COLOR_01}:${COLOR_02}:${COLOR_03}:${COLOR_04}:${COLOR_05}:${COLOR_06}:${COLOR_07}:${COLOR_08}:${COLOR_09}:${COLOR_10}:${COLOR_11}:${COLOR_12}:${COLOR_13}:${COLOR_14}:${COLOR_15}"
