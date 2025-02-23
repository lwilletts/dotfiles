# colour
export FFF_LS_COLORS=1
export FFF_COL1=3
export FFF_COL2=7
export FFF_COL3=1
export FFF_COL4=7
export FFF_COL5=0

# fav
export FFF_FAV1="$HOME/usr/vid/rec"
export FFF_FAV2="$HOME/usr/vid/"
export FFF_FAV3="$HOME/usr/vid/yt/music"
export FFF_FAV4="$HOME/usr/mus"
export FFF_FAV5="$HOME/usr/img"
export FFF_FAV6="$HOME/usr/doc"
export FFF_FAV7="$HOME/usr/torrents"
export FFF_FAV8="$HOME/tmp"
export FFF_FAV9="/mnt/pool"

# config
export FFF_HIDDEN=0
export FFF_OPENER="fffopen"
export FFF_STAT_CMD="stats"
export FFF_CD_ON_EXIT=1
export FFF_W3M_XOFFSET=0
export FFF_W3M_YOFFSET=0
export FFF_FILE_FORMAT=" %f"
export FFF_MARK_FORMAT="> %f*"
export FFF_TRASH_CMD="rm -rf"

# functions
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")" || return
}
