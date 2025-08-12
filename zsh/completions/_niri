#compdef niri

autoload -U is-at-least

_niri() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" : \
'-c+[Path to config file (default\: \`\$XDG_CONFIG_HOME/niri/config.kdl\`)]:CONFIG:_files' \
'--config=[Path to config file (default\: \`\$XDG_CONFIG_HOME/niri/config.kdl\`)]:CONFIG:_files' \
'--session[Import environment globally to systemd and D-Bus, run D-Bus services]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
'::command -- Command to run upon compositor startup:_default' \
":: :_niri_commands" \
"*::: :->niri" \
&& ret=0
    case $state in
    (niri)
        words=($line[2] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-command-$line[2]:"
        case $line[2] in
            (msg)
_arguments "${_arguments_options[@]}" : \
'-j[Format output as JSON]' \
'--json[Format output as JSON]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_niri__msg_commands" \
"*::: :->msg" \
&& ret=0

    case $state in
    (msg)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-command-$line[1]:"
        case $line[1] in
            (outputs)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(workspaces)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(windows)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(layers)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(keyboard-layouts)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focused-output)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focused-window)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(pick-window)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(pick-color)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(action)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
":: :_niri__msg__action_commands" \
"*::: :->action" \
&& ret=0

    case $state in
    (action)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-action-command-$line[1]:"
        case $line[1] in
            (quit)
_arguments "${_arguments_options[@]}" : \
'-s[Skip the "Press Enter to confirm" prompt]' \
'--skip-confirmation[Skip the "Press Enter to confirm" prompt]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(power-off-monitors)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(power-on-monitors)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(spawn)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
'*::command -- Command to spawn:_default' \
&& ret=0
;;
(do-screen-transition)
_arguments "${_arguments_options[@]}" : \
'-d+[Delay in milliseconds for the screen to freeze before starting the transition]:DELAY_MS:_default' \
'--delay-ms=[Delay in milliseconds for the screen to freeze before starting the transition]:DELAY_MS:_default' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(screenshot)
_arguments "${_arguments_options[@]}" : \
'-p+[Whether to show the mouse pointer by default in the screenshot UI]:SHOW_POINTER:(true false)' \
'--show-pointer=[Whether to show the mouse pointer by default in the screenshot UI]:SHOW_POINTER:(true false)' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(screenshot-screen)
_arguments "${_arguments_options[@]}" : \
'-d+[Write the screenshot to disk in addition to putting it in your clipboard]:WRITE_TO_DISK:(true false)' \
'--write-to-disk=[Write the screenshot to disk in addition to putting it in your clipboard]:WRITE_TO_DISK:(true false)' \
'-p+[Whether to include the mouse pointer in the screenshot]:SHOW_POINTER:(true false)' \
'--show-pointer=[Whether to include the mouse pointer in the screenshot]:SHOW_POINTER:(true false)' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(screenshot-window)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to screenshot]:ID:_default' \
'-d+[Write the screenshot to disk in addition to putting it in your clipboard]:WRITE_TO_DISK:(true false)' \
'--write-to-disk=[Write the screenshot to disk in addition to putting it in your clipboard]:WRITE_TO_DISK:(true false)' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(toggle-keyboard-shortcuts-inhibit)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(close-window)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to close]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(fullscreen-window)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to toggle fullscreen of]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(toggle-windowed-fullscreen)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to toggle windowed fullscreen of]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(focus-window)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to focus]:ID:_default' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-in-column)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':index -- Index of the window in the column:_default' \
&& ret=0
;;
(focus-window-previous)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-column-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-column-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-column-first)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-column-last)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-column-right-or-first)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-column-left-or-last)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-column)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':index -- Index of the column to focus:_default' \
&& ret=0
;;
(focus-window-or-monitor-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-or-monitor-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-column-or-monitor-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-column-or-monitor-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-down-or-column-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-down-or-column-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-up-or-column-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-up-or-column-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-or-workspace-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-or-workspace-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-top)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-bottom)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-down-or-top)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-window-up-or-bottom)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-to-first)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-to-last)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-left-or-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-right-or-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-to-index)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':index -- New index for the column:_default' \
&& ret=0
;;
(move-window-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-down-or-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-up-or-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(consume-or-expel-window-left)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to consume or expel]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(consume-or-expel-window-right)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to consume or expel]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(consume-window-into-column)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(expel-window-from-column)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(swap-window-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(swap-window-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(toggle-column-tabbed-display)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(set-column-display)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':display -- Display mode to set:_default' \
&& ret=0
;;
(center-column)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(center-window)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to center]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(center-visible-columns)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-workspace-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-workspace-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-workspace)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':reference -- Reference (index or name) of the workspace to focus:_default' \
&& ret=0
;;
(focus-workspace-previous)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-to-workspace)
_arguments "${_arguments_options[@]}" : \
'--window-id=[Id of the window to move]:WINDOW_ID:_default' \
'--focus=[Whether the focus should follow the moved window]:FOCUS:(true false)' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':reference -- Reference (index or name) of the workspace to move the window to:_default' \
&& ret=0
;;
(move-column-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
'--focus=[Whether the focus should follow the target workspace]:FOCUS:(true false)' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(move-column-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
'--focus=[Whether the focus should follow the target workspace]:FOCUS:(true false)' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(move-column-to-workspace)
_arguments "${_arguments_options[@]}" : \
'--focus=[Whether the focus should follow the target workspace]:FOCUS:(true false)' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':reference -- Reference (index or name) of the workspace to move the column to:_default' \
&& ret=0
;;
(move-workspace-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-workspace-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-workspace-to-index)
_arguments "${_arguments_options[@]}" : \
'--reference=[Reference (index or name) of the workspace to move]:REFERENCE:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':index -- New index for the workspace:_default' \
&& ret=0
;;
(set-workspace-name)
_arguments "${_arguments_options[@]}" : \
'--workspace=[Reference (index or name) of the workspace to name]:WORKSPACE:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':name -- New name for the workspace:_default' \
&& ret=0
;;
(unset-workspace-name)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::reference -- Reference (index or name) of the workspace to unname:_default' \
&& ret=0
;;
(focus-monitor-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-monitor-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-monitor-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-monitor-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-monitor-previous)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-monitor-next)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-monitor)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':output -- Name of the output to focus:_default' \
&& ret=0
;;
(move-window-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-window-to-monitor)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to move]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':output -- The target output name:_default' \
&& ret=0
;;
(move-column-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-column-to-monitor)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':output -- The target output name:_default' \
&& ret=0
;;
(set-window-width)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window whose width to set]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':change -- How to change the width:_default' \
&& ret=0
;;
(set-window-height)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window whose height to set]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':change -- How to change the height:_default' \
&& ret=0
;;
(reset-window-height)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window whose height to reset]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(switch-preset-column-width)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(switch-preset-window-width)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window whose width to switch]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(switch-preset-window-height)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window whose height to switch]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(maximize-column)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(set-column-width)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':change -- How to change the width:_default' \
&& ret=0
;;
(expand-column-to-available-width)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(switch-layout)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':layout -- Layout to switch to:_default' \
&& ret=0
;;
(show-hotkey-overlay)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-workspace-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-workspace-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-workspace-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-workspace-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-workspace-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-workspace-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-workspace-to-monitor)
_arguments "${_arguments_options[@]}" : \
'--reference=[If \`None\`, uses the focused workspace]:REFERENCE:_default' \
'-h[Print help]' \
'--help[Print help]' \
':output -- The target output name:_default' \
&& ret=0
;;
(toggle-debug-tint)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(debug-toggle-opaque-regions)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(debug-toggle-damage)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(toggle-window-floating)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to move]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(move-window-to-floating)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to move]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(move-window-to-tiling)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to move]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(focus-floating)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(focus-tiling)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(switch-focus-between-floating-and-tiling)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(move-floating-window)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to move]:ID:_default' \
'-x+[How to change the X position]:X:_default' \
'--x=[How to change the X position]:X:_default' \
'-y+[How to change the Y position]:Y:_default' \
'--y=[How to change the Y position]:Y:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(toggle-window-rule-opacity)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(set-dynamic-cast-window)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to target]:ID:_default' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(set-dynamic-cast-monitor)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'::output -- Name of the output to target:_default' \
&& ret=0
;;
(clear-dynamic-cast-target)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(toggle-overview)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(open-overview)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(close-overview)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(toggle-window-urgent)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to toggle urgent]:ID:_default' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(set-window-urgent)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to set urgent]:ID:_default' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(unset-window-urgent)
_arguments "${_arguments_options[@]}" : \
'--id=[Id of the window to unset urgent]:ID:_default' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_niri__msg__action__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-action-help-command-$line[1]:"
        case $line[1] in
            (quit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(power-off-monitors)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(power-on-monitors)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(spawn)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(do-screen-transition)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(screenshot)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(screenshot-screen)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(screenshot-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-keyboard-shortcuts-inhibit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(close-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(fullscreen-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-windowed-fullscreen)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-in-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-first)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-last)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-right-or-first)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-left-or-last)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-or-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-or-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down-or-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down-or-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up-or-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up-or-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-top)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-bottom)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down-or-top)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up-or-bottom)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-first)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-last)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-left-or-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-right-or-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-down-or-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-up-or-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(consume-or-expel-window-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(consume-or-expel-window-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(consume-window-into-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(expel-window-from-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(swap-window-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(swap-window-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-column-tabbed-display)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-column-display)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(center-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(center-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(center-visible-columns)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-workspace)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-workspace)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-workspace-name)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(unset-workspace-name)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-window-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-window-height)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(reset-window-height)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-preset-column-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-preset-window-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-preset-window-height)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(maximize-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-column-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(expand-column-to-available-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-layout)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(show-hotkey-overlay)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-debug-tint)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(debug-toggle-opaque-regions)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(debug-toggle-damage)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-window-floating)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-floating)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-tiling)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-floating)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-tiling)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-focus-between-floating-and-tiling)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-floating-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-window-rule-opacity)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-dynamic-cast-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-dynamic-cast-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(clear-dynamic-cast-target)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-overview)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(open-overview)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(close-overview)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-window-urgent)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-window-urgent)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(unset-window-urgent)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(output)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':output -- Output name:_default' \
":: :_niri__msg__output_commands" \
"*::: :->output" \
&& ret=0

    case $state in
    (output)
        words=($line[2] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-output-command-$line[2]:"
        case $line[2] in
            (off)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(on)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(mode)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':mode -- Mode to set, or "auto" for automatic selection:_default' \
&& ret=0
;;
(scale)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':scale -- Scale factor to set, or "auto" for automatic selection:_default' \
&& ret=0
;;
(transform)
_arguments "${_arguments_options[@]}" : \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
':transform -- Transform to set, counter-clockwise:((normal\:"Untransformed"
90\:"Rotated by 90°"
180\:"Rotated by 180°"
270\:"Rotated by 270°"
flipped\:"Flipped horizontally"
flipped-90\:"Rotated by 90° and flipped horizontally"
flipped-180\:"Flipped vertically"
flipped-270\:"Rotated by 270° and flipped horizontally"))' \
&& ret=0
;;
(position)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
":: :_niri__msg__output__position_commands" \
"*::: :->position" \
&& ret=0

    case $state in
    (position)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-output-position-command-$line[1]:"
        case $line[1] in
            (auto)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':x -- Logical X position:_default' \
':y -- Logical Y position:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_niri__msg__output__position__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-output-position-help-command-$line[1]:"
        case $line[1] in
            (auto)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(vrr)
_arguments "${_arguments_options[@]}" : \
'--on-demand[Only enable when the output shows a window matching the variable-refresh-rate window rule]' \
'-h[Print help]' \
'--help[Print help]' \
':vrr -- Whether to enable variable refresh rate:(true false)' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_niri__msg__output__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-output-help-command-$line[1]:"
        case $line[1] in
            (off)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(on)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(mode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(scale)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(transform)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(position)
_arguments "${_arguments_options[@]}" : \
":: :_niri__msg__output__help__position_commands" \
"*::: :->position" \
&& ret=0

    case $state in
    (position)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-output-help-position-command-$line[1]:"
        case $line[1] in
            (auto)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(vrr)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(event-stream)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(version)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(request-error)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(overview-state)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_niri__msg__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-help-command-$line[1]:"
        case $line[1] in
            (outputs)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(workspaces)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(windows)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(layers)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(keyboard-layouts)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focused-output)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focused-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(pick-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(pick-color)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(action)
_arguments "${_arguments_options[@]}" : \
":: :_niri__msg__help__action_commands" \
"*::: :->action" \
&& ret=0

    case $state in
    (action)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-help-action-command-$line[1]:"
        case $line[1] in
            (quit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(power-off-monitors)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(power-on-monitors)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(spawn)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(do-screen-transition)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(screenshot)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(screenshot-screen)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(screenshot-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-keyboard-shortcuts-inhibit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(close-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(fullscreen-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-windowed-fullscreen)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-in-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-first)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-last)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-right-or-first)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-left-or-last)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-or-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-or-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down-or-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down-or-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up-or-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up-or-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-top)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-bottom)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down-or-top)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up-or-bottom)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-first)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-last)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-left-or-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-right-or-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-down-or-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-up-or-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(consume-or-expel-window-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(consume-or-expel-window-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(consume-window-into-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(expel-window-from-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(swap-window-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(swap-window-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-column-tabbed-display)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-column-display)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(center-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(center-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(center-visible-columns)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-workspace)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-workspace)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-workspace-name)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(unset-workspace-name)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-window-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-window-height)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(reset-window-height)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-preset-column-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-preset-window-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-preset-window-height)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(maximize-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-column-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(expand-column-to-available-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-layout)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(show-hotkey-overlay)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-debug-tint)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(debug-toggle-opaque-regions)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(debug-toggle-damage)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-window-floating)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-floating)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-tiling)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-floating)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-tiling)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-focus-between-floating-and-tiling)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-floating-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-window-rule-opacity)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-dynamic-cast-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-dynamic-cast-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(clear-dynamic-cast-target)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-overview)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(open-overview)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(close-overview)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-window-urgent)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-window-urgent)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(unset-window-urgent)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(output)
_arguments "${_arguments_options[@]}" : \
":: :_niri__msg__help__output_commands" \
"*::: :->output" \
&& ret=0

    case $state in
    (output)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-help-output-command-$line[1]:"
        case $line[1] in
            (off)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(on)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(mode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(scale)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(transform)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(position)
_arguments "${_arguments_options[@]}" : \
":: :_niri__msg__help__output__position_commands" \
"*::: :->position" \
&& ret=0

    case $state in
    (position)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-msg-help-output-position-command-$line[1]:"
        case $line[1] in
            (auto)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(vrr)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(event-stream)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(version)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(request-error)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(overview-state)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(validate)
_arguments "${_arguments_options[@]}" : \
'-c+[Path to config file (default\: \`\$XDG_CONFIG_HOME/niri/config.kdl\`)]:CONFIG:_files' \
'--config=[Path to config file (default\: \`\$XDG_CONFIG_HOME/niri/config.kdl\`)]:CONFIG:_files' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(panic)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" : \
'-h[Print help]' \
'--help[Print help]' \
':shell:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_niri__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-help-command-$line[1]:"
        case $line[1] in
            (msg)
_arguments "${_arguments_options[@]}" : \
":: :_niri__help__msg_commands" \
"*::: :->msg" \
&& ret=0

    case $state in
    (msg)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-help-msg-command-$line[1]:"
        case $line[1] in
            (outputs)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(workspaces)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(windows)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(layers)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(keyboard-layouts)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focused-output)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focused-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(pick-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(pick-color)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(action)
_arguments "${_arguments_options[@]}" : \
":: :_niri__help__msg__action_commands" \
"*::: :->action" \
&& ret=0

    case $state in
    (action)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-help-msg-action-command-$line[1]:"
        case $line[1] in
            (quit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(power-off-monitors)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(power-on-monitors)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(spawn)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(do-screen-transition)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(screenshot)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(screenshot-screen)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(screenshot-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-keyboard-shortcuts-inhibit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(close-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(fullscreen-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-windowed-fullscreen)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-in-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-first)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-last)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-right-or-first)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-left-or-last)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-or-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-column-or-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down-or-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down-or-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up-or-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up-or-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-or-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-top)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-bottom)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-down-or-top)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-window-up-or-bottom)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-first)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-last)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-left-or-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-right-or-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-down-or-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-up-or-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(consume-or-expel-window-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(consume-or-expel-window-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(consume-window-into-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(expel-window-from-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(swap-window-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(swap-window-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-column-tabbed-display)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-column-display)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(center-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(center-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(center-visible-columns)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-workspace-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-workspace)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-workspace)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-index)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-workspace-name)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(unset-workspace-name)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-column-to-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-window-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-window-height)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(reset-window-height)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-preset-column-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-preset-window-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-preset-window-height)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(maximize-column)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-column-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(expand-column-to-available-width)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-layout)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(show-hotkey-overlay)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-left)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-right)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-down)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-up)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-previous)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor-next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-workspace-to-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-debug-tint)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(debug-toggle-opaque-regions)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(debug-toggle-damage)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-window-floating)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-floating)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-window-to-tiling)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-floating)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(focus-tiling)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(switch-focus-between-floating-and-tiling)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move-floating-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-window-rule-opacity)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-dynamic-cast-window)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-dynamic-cast-monitor)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(clear-dynamic-cast-target)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-overview)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(open-overview)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(close-overview)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(toggle-window-urgent)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set-window-urgent)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(unset-window-urgent)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(output)
_arguments "${_arguments_options[@]}" : \
":: :_niri__help__msg__output_commands" \
"*::: :->output" \
&& ret=0

    case $state in
    (output)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-help-msg-output-command-$line[1]:"
        case $line[1] in
            (off)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(on)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(mode)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(scale)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(transform)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(position)
_arguments "${_arguments_options[@]}" : \
":: :_niri__help__msg__output__position_commands" \
"*::: :->position" \
&& ret=0

    case $state in
    (position)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:niri-help-msg-output-position-command-$line[1]:"
        case $line[1] in
            (auto)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(set)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(vrr)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(event-stream)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(version)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(request-error)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(overview-state)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(validate)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(panic)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_niri_commands] )) ||
_niri_commands() {
    local commands; commands=(
'msg:Communicate with the running niri instance' \
'validate:Validate the config file' \
'panic:Cause a panic to check if the backtraces are good' \
'completions:Generate shell completions' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri commands' commands "$@"
}
(( $+functions[_niri__completions_commands] )) ||
_niri__completions_commands() {
    local commands; commands=()
    _describe -t commands 'niri completions commands' commands "$@"
}
(( $+functions[_niri__help_commands] )) ||
_niri__help_commands() {
    local commands; commands=(
'msg:Communicate with the running niri instance' \
'validate:Validate the config file' \
'panic:Cause a panic to check if the backtraces are good' \
'completions:Generate shell completions' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri help commands' commands "$@"
}
(( $+functions[_niri__help__completions_commands] )) ||
_niri__help__completions_commands() {
    local commands; commands=()
    _describe -t commands 'niri help completions commands' commands "$@"
}
(( $+functions[_niri__help__help_commands] )) ||
_niri__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'niri help help commands' commands "$@"
}
(( $+functions[_niri__help__msg_commands] )) ||
_niri__help__msg_commands() {
    local commands; commands=(
'outputs:List connected outputs' \
'workspaces:List workspaces' \
'windows:List open windows' \
'layers:List open layer-shell surfaces' \
'keyboard-layouts:Get the configured keyboard layouts' \
'focused-output:Print information about the focused output' \
'focused-window:Print information about the focused window' \
'pick-window:Pick a window with the mouse and print information about it' \
'pick-color:Pick a color from the screen with the mouse' \
'action:Perform an action' \
'output:Change output configuration temporarily' \
'event-stream:Start continuously receiving events from the compositor' \
'version:Print the version of the running niri instance' \
'request-error:Request an error from the running niri instance' \
'overview-state:Print the overview state' \
    )
    _describe -t commands 'niri help msg commands' commands "$@"
}
(( $+functions[_niri__help__msg__action_commands] )) ||
_niri__help__msg__action_commands() {
    local commands; commands=(
'quit:Exit niri' \
'power-off-monitors:Power off all monitors via DPMS' \
'power-on-monitors:Power on all monitors via DPMS' \
'spawn:Spawn a command' \
'do-screen-transition:Do a screen transition' \
'screenshot:Open the screenshot UI' \
'screenshot-screen:Screenshot the focused screen' \
'screenshot-window:Screenshot the focused window' \
'toggle-keyboard-shortcuts-inhibit:Enable or disable the keyboard shortcuts inhibitor (if any) for the focused surface' \
'close-window:Close the focused window' \
'fullscreen-window:Toggle fullscreen on the focused window' \
'toggle-windowed-fullscreen:Toggle windowed (fake) fullscreen on the focused window' \
'focus-window:Focus a window by id' \
'focus-window-in-column:Focus a window in the focused column by index' \
'focus-window-previous:Focus the previously focused window' \
'focus-column-left:Focus the column to the left' \
'focus-column-right:Focus the column to the right' \
'focus-column-first:Focus the first column' \
'focus-column-last:Focus the last column' \
'focus-column-right-or-first:Focus the next column to the right, looping if at end' \
'focus-column-left-or-last:Focus the next column to the left, looping if at start' \
'focus-column:Focus a column by index' \
'focus-window-or-monitor-up:Focus the window or the monitor above' \
'focus-window-or-monitor-down:Focus the window or the monitor below' \
'focus-column-or-monitor-left:Focus the column or the monitor to the left' \
'focus-column-or-monitor-right:Focus the column or the monitor to the right' \
'focus-window-down:Focus the window below' \
'focus-window-up:Focus the window above' \
'focus-window-down-or-column-left:Focus the window below or the column to the left' \
'focus-window-down-or-column-right:Focus the window below or the column to the right' \
'focus-window-up-or-column-left:Focus the window above or the column to the left' \
'focus-window-up-or-column-right:Focus the window above or the column to the right' \
'focus-window-or-workspace-down:Focus the window or the workspace above' \
'focus-window-or-workspace-up:Focus the window or the workspace above' \
'focus-window-top:Focus the topmost window' \
'focus-window-bottom:Focus the bottommost window' \
'focus-window-down-or-top:Focus the window below or the topmost window' \
'focus-window-up-or-bottom:Focus the window above or the bottommost window' \
'move-column-left:Move the focused column to the left' \
'move-column-right:Move the focused column to the right' \
'move-column-to-first:Move the focused column to the start of the workspace' \
'move-column-to-last:Move the focused column to the end of the workspace' \
'move-column-left-or-to-monitor-left:Move the focused column to the left or to the monitor to the left' \
'move-column-right-or-to-monitor-right:Move the focused column to the right or to the monitor to the right' \
'move-column-to-index:Move the focused column to a specific index on its workspace' \
'move-window-down:Move the focused window down in a column' \
'move-window-up:Move the focused window up in a column' \
'move-window-down-or-to-workspace-down:Move the focused window down in a column or to the workspace below' \
'move-window-up-or-to-workspace-up:Move the focused window up in a column or to the workspace above' \
'consume-or-expel-window-left:Consume or expel the focused window left' \
'consume-or-expel-window-right:Consume or expel the focused window right' \
'consume-window-into-column:Consume the window to the right into the focused column' \
'expel-window-from-column:Expel the focused window from the column' \
'swap-window-right:Swap focused window with one to the right' \
'swap-window-left:Swap focused window with one to the left' \
'toggle-column-tabbed-display:Toggle the focused column between normal and tabbed display' \
'set-column-display:Set the display mode of the focused column' \
'center-column:Center the focused column on the screen' \
'center-window:Center the focused window on the screen' \
'center-visible-columns:Center all fully visible columns on the screen' \
'focus-workspace-down:Focus the workspace below' \
'focus-workspace-up:Focus the workspace above' \
'focus-workspace:Focus a workspace by reference (index or name)' \
'focus-workspace-previous:Focus the previous workspace' \
'move-window-to-workspace-down:Move the focused window to the workspace below' \
'move-window-to-workspace-up:Move the focused window to the workspace above' \
'move-window-to-workspace:Move the focused window to a workspace by reference (index or name)' \
'move-column-to-workspace-down:Move the focused column to the workspace below' \
'move-column-to-workspace-up:Move the focused column to the workspace above' \
'move-column-to-workspace:Move the focused column to a workspace by reference (index or name)' \
'move-workspace-down:Move the focused workspace down' \
'move-workspace-up:Move the focused workspace up' \
'move-workspace-to-index:Move the focused workspace to a specific index on its monitor' \
'set-workspace-name:Set the name of the focused workspace' \
'unset-workspace-name:Unset the name of the focused workspace' \
'focus-monitor-left:Focus the monitor to the left' \
'focus-monitor-right:Focus the monitor to the right' \
'focus-monitor-down:Focus the monitor below' \
'focus-monitor-up:Focus the monitor above' \
'focus-monitor-previous:Focus the previous monitor' \
'focus-monitor-next:Focus the next monitor' \
'focus-monitor:Focus a monitor by name' \
'move-window-to-monitor-left:Move the focused window to the monitor to the left' \
'move-window-to-monitor-right:Move the focused window to the monitor to the right' \
'move-window-to-monitor-down:Move the focused window to the monitor below' \
'move-window-to-monitor-up:Move the focused window to the monitor above' \
'move-window-to-monitor-previous:Move the focused window to the previous monitor' \
'move-window-to-monitor-next:Move the focused window to the next monitor' \
'move-window-to-monitor:Move the focused window to a specific monitor' \
'move-column-to-monitor-left:Move the focused column to the monitor to the left' \
'move-column-to-monitor-right:Move the focused column to the monitor to the right' \
'move-column-to-monitor-down:Move the focused column to the monitor below' \
'move-column-to-monitor-up:Move the focused column to the monitor above' \
'move-column-to-monitor-previous:Move the focused column to the previous monitor' \
'move-column-to-monitor-next:Move the focused column to the next monitor' \
'move-column-to-monitor:Move the focused column to a specific monitor' \
'set-window-width:Change the width of the focused window' \
'set-window-height:Change the height of the focused window' \
'reset-window-height:Reset the height of the focused window back to automatic' \
'switch-preset-column-width:Switch between preset column widths' \
'switch-preset-window-width:Switch between preset window widths' \
'switch-preset-window-height:Switch between preset window heights' \
'maximize-column:Toggle the maximized state of the focused column' \
'set-column-width:Change the width of the focused column' \
'expand-column-to-available-width:Expand the focused column to space not taken up by other fully visible columns' \
'switch-layout:Switch between keyboard layouts' \
'show-hotkey-overlay:Show the hotkey overlay' \
'move-workspace-to-monitor-left:Move the focused workspace to the monitor to the left' \
'move-workspace-to-monitor-right:Move the focused workspace to the monitor to the right' \
'move-workspace-to-monitor-down:Move the focused workspace to the monitor below' \
'move-workspace-to-monitor-up:Move the focused workspace to the monitor above' \
'move-workspace-to-monitor-previous:Move the focused workspace to the previous monitor' \
'move-workspace-to-monitor-next:Move the focused workspace to the next monitor' \
'move-workspace-to-monitor:Move the focused workspace to a specific monitor' \
'toggle-debug-tint:Toggle a debug tint on windows' \
'debug-toggle-opaque-regions:Toggle visualization of render element opaque regions' \
'debug-toggle-damage:Toggle visualization of output damage' \
'toggle-window-floating:Move the focused window between the floating and the tiling layout' \
'move-window-to-floating:Move the focused window to the floating layout' \
'move-window-to-tiling:Move the focused window to the tiling layout' \
'focus-floating:Switches focus to the floating layout' \
'focus-tiling:Switches focus to the tiling layout' \
'switch-focus-between-floating-and-tiling:Toggles the focus between the floating and the tiling layout' \
'move-floating-window:Move the floating window on screen' \
'toggle-window-rule-opacity:Toggle the opacity of the focused window' \
'set-dynamic-cast-window:Set the dynamic cast target to the focused window' \
'set-dynamic-cast-monitor:Set the dynamic cast target to the focused monitor' \
'clear-dynamic-cast-target:Clear the dynamic cast target, making it show nothing' \
'toggle-overview:Toggle (open/close) the Overview' \
'open-overview:Open the Overview' \
'close-overview:Close the Overview' \
'toggle-window-urgent:Toggle urgent status of a window' \
'set-window-urgent:Set urgent status of a window' \
'unset-window-urgent:Unset urgent status of a window' \
    )
    _describe -t commands 'niri help msg action commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__center-column_commands] )) ||
_niri__help__msg__action__center-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action center-column commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__center-visible-columns_commands] )) ||
_niri__help__msg__action__center-visible-columns_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action center-visible-columns commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__center-window_commands] )) ||
_niri__help__msg__action__center-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action center-window commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__clear-dynamic-cast-target_commands] )) ||
_niri__help__msg__action__clear-dynamic-cast-target_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action clear-dynamic-cast-target commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__close-overview_commands] )) ||
_niri__help__msg__action__close-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action close-overview commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__close-window_commands] )) ||
_niri__help__msg__action__close-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action close-window commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__consume-or-expel-window-left_commands] )) ||
_niri__help__msg__action__consume-or-expel-window-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action consume-or-expel-window-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__consume-or-expel-window-right_commands] )) ||
_niri__help__msg__action__consume-or-expel-window-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action consume-or-expel-window-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__consume-window-into-column_commands] )) ||
_niri__help__msg__action__consume-window-into-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action consume-window-into-column commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__debug-toggle-damage_commands] )) ||
_niri__help__msg__action__debug-toggle-damage_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action debug-toggle-damage commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__debug-toggle-opaque-regions_commands] )) ||
_niri__help__msg__action__debug-toggle-opaque-regions_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action debug-toggle-opaque-regions commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__do-screen-transition_commands] )) ||
_niri__help__msg__action__do-screen-transition_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action do-screen-transition commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__expand-column-to-available-width_commands] )) ||
_niri__help__msg__action__expand-column-to-available-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action expand-column-to-available-width commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__expel-window-from-column_commands] )) ||
_niri__help__msg__action__expel-window-from-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action expel-window-from-column commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-column_commands] )) ||
_niri__help__msg__action__focus-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-column commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-column-first_commands] )) ||
_niri__help__msg__action__focus-column-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-column-first commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-column-last_commands] )) ||
_niri__help__msg__action__focus-column-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-column-last commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-column-left_commands] )) ||
_niri__help__msg__action__focus-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-column-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-column-left-or-last_commands] )) ||
_niri__help__msg__action__focus-column-left-or-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-column-left-or-last commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-column-or-monitor-left_commands] )) ||
_niri__help__msg__action__focus-column-or-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-column-or-monitor-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-column-or-monitor-right_commands] )) ||
_niri__help__msg__action__focus-column-or-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-column-or-monitor-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-column-right_commands] )) ||
_niri__help__msg__action__focus-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-column-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-column-right-or-first_commands] )) ||
_niri__help__msg__action__focus-column-right-or-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-column-right-or-first commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-floating_commands] )) ||
_niri__help__msg__action__focus-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-floating commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-monitor_commands] )) ||
_niri__help__msg__action__focus-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-monitor commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-monitor-down_commands] )) ||
_niri__help__msg__action__focus-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-monitor-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-monitor-left_commands] )) ||
_niri__help__msg__action__focus-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-monitor-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-monitor-next_commands] )) ||
_niri__help__msg__action__focus-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-monitor-next commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-monitor-previous_commands] )) ||
_niri__help__msg__action__focus-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-monitor-right_commands] )) ||
_niri__help__msg__action__focus-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-monitor-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-monitor-up_commands] )) ||
_niri__help__msg__action__focus-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-monitor-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-tiling_commands] )) ||
_niri__help__msg__action__focus-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-tiling commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window_commands] )) ||
_niri__help__msg__action__focus-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-bottom_commands] )) ||
_niri__help__msg__action__focus-window-bottom_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-bottom commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-down_commands] )) ||
_niri__help__msg__action__focus-window-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-down-or-column-left_commands] )) ||
_niri__help__msg__action__focus-window-down-or-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-down-or-column-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-down-or-column-right_commands] )) ||
_niri__help__msg__action__focus-window-down-or-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-down-or-column-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-down-or-top_commands] )) ||
_niri__help__msg__action__focus-window-down-or-top_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-down-or-top commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-in-column_commands] )) ||
_niri__help__msg__action__focus-window-in-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-in-column commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-or-monitor-down_commands] )) ||
_niri__help__msg__action__focus-window-or-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-or-monitor-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-or-monitor-up_commands] )) ||
_niri__help__msg__action__focus-window-or-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-or-monitor-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-or-workspace-down_commands] )) ||
_niri__help__msg__action__focus-window-or-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-or-workspace-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-or-workspace-up_commands] )) ||
_niri__help__msg__action__focus-window-or-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-or-workspace-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-previous_commands] )) ||
_niri__help__msg__action__focus-window-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-previous commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-top_commands] )) ||
_niri__help__msg__action__focus-window-top_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-top commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-up_commands] )) ||
_niri__help__msg__action__focus-window-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-up-or-bottom_commands] )) ||
_niri__help__msg__action__focus-window-up-or-bottom_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-up-or-bottom commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-up-or-column-left_commands] )) ||
_niri__help__msg__action__focus-window-up-or-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-up-or-column-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-window-up-or-column-right_commands] )) ||
_niri__help__msg__action__focus-window-up-or-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-window-up-or-column-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-workspace_commands] )) ||
_niri__help__msg__action__focus-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-workspace commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-workspace-down_commands] )) ||
_niri__help__msg__action__focus-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-workspace-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-workspace-previous_commands] )) ||
_niri__help__msg__action__focus-workspace-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-workspace-previous commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__focus-workspace-up_commands] )) ||
_niri__help__msg__action__focus-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action focus-workspace-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__fullscreen-window_commands] )) ||
_niri__help__msg__action__fullscreen-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action fullscreen-window commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__maximize-column_commands] )) ||
_niri__help__msg__action__maximize-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action maximize-column commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-left_commands] )) ||
_niri__help__msg__action__move-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-left-or-to-monitor-left_commands] )) ||
_niri__help__msg__action__move-column-left-or-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-left-or-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-right_commands] )) ||
_niri__help__msg__action__move-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-right-or-to-monitor-right_commands] )) ||
_niri__help__msg__action__move-column-right-or-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-right-or-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-first_commands] )) ||
_niri__help__msg__action__move-column-to-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-first commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-index_commands] )) ||
_niri__help__msg__action__move-column-to-index_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-index commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-last_commands] )) ||
_niri__help__msg__action__move-column-to-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-last commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-monitor_commands] )) ||
_niri__help__msg__action__move-column-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-monitor commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-monitor-down_commands] )) ||
_niri__help__msg__action__move-column-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-monitor-left_commands] )) ||
_niri__help__msg__action__move-column-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-monitor-next_commands] )) ||
_niri__help__msg__action__move-column-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-monitor-previous_commands] )) ||
_niri__help__msg__action__move-column-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-monitor-right_commands] )) ||
_niri__help__msg__action__move-column-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-monitor-up_commands] )) ||
_niri__help__msg__action__move-column-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-workspace_commands] )) ||
_niri__help__msg__action__move-column-to-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-workspace commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-workspace-down_commands] )) ||
_niri__help__msg__action__move-column-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-column-to-workspace-up_commands] )) ||
_niri__help__msg__action__move-column-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-column-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-floating-window_commands] )) ||
_niri__help__msg__action__move-floating-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-floating-window commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-down_commands] )) ||
_niri__help__msg__action__move-window-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-down-or-to-workspace-down_commands] )) ||
_niri__help__msg__action__move-window-down-or-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-down-or-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-floating_commands] )) ||
_niri__help__msg__action__move-window-to-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-floating commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-monitor_commands] )) ||
_niri__help__msg__action__move-window-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-monitor commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-monitor-down_commands] )) ||
_niri__help__msg__action__move-window-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-monitor-left_commands] )) ||
_niri__help__msg__action__move-window-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-monitor-next_commands] )) ||
_niri__help__msg__action__move-window-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-monitor-previous_commands] )) ||
_niri__help__msg__action__move-window-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-monitor-right_commands] )) ||
_niri__help__msg__action__move-window-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-monitor-up_commands] )) ||
_niri__help__msg__action__move-window-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-tiling_commands] )) ||
_niri__help__msg__action__move-window-to-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-tiling commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-workspace_commands] )) ||
_niri__help__msg__action__move-window-to-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-workspace commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-workspace-down_commands] )) ||
_niri__help__msg__action__move-window-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-to-workspace-up_commands] )) ||
_niri__help__msg__action__move-window-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-up_commands] )) ||
_niri__help__msg__action__move-window-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-window-up-or-to-workspace-up_commands] )) ||
_niri__help__msg__action__move-window-up-or-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-window-up-or-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-down_commands] )) ||
_niri__help__msg__action__move-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-to-index_commands] )) ||
_niri__help__msg__action__move-workspace-to-index_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-to-index commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-to-monitor_commands] )) ||
_niri__help__msg__action__move-workspace-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-to-monitor commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-to-monitor-down_commands] )) ||
_niri__help__msg__action__move-workspace-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-to-monitor-left_commands] )) ||
_niri__help__msg__action__move-workspace-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-to-monitor-next_commands] )) ||
_niri__help__msg__action__move-workspace-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-to-monitor-previous_commands] )) ||
_niri__help__msg__action__move-workspace-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-to-monitor-right_commands] )) ||
_niri__help__msg__action__move-workspace-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-to-monitor-up_commands] )) ||
_niri__help__msg__action__move-workspace-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__move-workspace-up_commands] )) ||
_niri__help__msg__action__move-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action move-workspace-up commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__open-overview_commands] )) ||
_niri__help__msg__action__open-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action open-overview commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__power-off-monitors_commands] )) ||
_niri__help__msg__action__power-off-monitors_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action power-off-monitors commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__power-on-monitors_commands] )) ||
_niri__help__msg__action__power-on-monitors_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action power-on-monitors commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__quit_commands] )) ||
_niri__help__msg__action__quit_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action quit commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__reset-window-height_commands] )) ||
_niri__help__msg__action__reset-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action reset-window-height commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__screenshot_commands] )) ||
_niri__help__msg__action__screenshot_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action screenshot commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__screenshot-screen_commands] )) ||
_niri__help__msg__action__screenshot-screen_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action screenshot-screen commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__screenshot-window_commands] )) ||
_niri__help__msg__action__screenshot-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action screenshot-window commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__set-column-display_commands] )) ||
_niri__help__msg__action__set-column-display_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action set-column-display commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__set-column-width_commands] )) ||
_niri__help__msg__action__set-column-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action set-column-width commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__set-dynamic-cast-monitor_commands] )) ||
_niri__help__msg__action__set-dynamic-cast-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action set-dynamic-cast-monitor commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__set-dynamic-cast-window_commands] )) ||
_niri__help__msg__action__set-dynamic-cast-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action set-dynamic-cast-window commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__set-window-height_commands] )) ||
_niri__help__msg__action__set-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action set-window-height commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__set-window-urgent_commands] )) ||
_niri__help__msg__action__set-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action set-window-urgent commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__set-window-width_commands] )) ||
_niri__help__msg__action__set-window-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action set-window-width commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__set-workspace-name_commands] )) ||
_niri__help__msg__action__set-workspace-name_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action set-workspace-name commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__show-hotkey-overlay_commands] )) ||
_niri__help__msg__action__show-hotkey-overlay_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action show-hotkey-overlay commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__spawn_commands] )) ||
_niri__help__msg__action__spawn_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action spawn commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__swap-window-left_commands] )) ||
_niri__help__msg__action__swap-window-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action swap-window-left commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__swap-window-right_commands] )) ||
_niri__help__msg__action__swap-window-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action swap-window-right commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__switch-focus-between-floating-and-tiling_commands] )) ||
_niri__help__msg__action__switch-focus-between-floating-and-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action switch-focus-between-floating-and-tiling commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__switch-layout_commands] )) ||
_niri__help__msg__action__switch-layout_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action switch-layout commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__switch-preset-column-width_commands] )) ||
_niri__help__msg__action__switch-preset-column-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action switch-preset-column-width commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__switch-preset-window-height_commands] )) ||
_niri__help__msg__action__switch-preset-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action switch-preset-window-height commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__switch-preset-window-width_commands] )) ||
_niri__help__msg__action__switch-preset-window-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action switch-preset-window-width commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__toggle-column-tabbed-display_commands] )) ||
_niri__help__msg__action__toggle-column-tabbed-display_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action toggle-column-tabbed-display commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__toggle-debug-tint_commands] )) ||
_niri__help__msg__action__toggle-debug-tint_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action toggle-debug-tint commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__toggle-keyboard-shortcuts-inhibit_commands] )) ||
_niri__help__msg__action__toggle-keyboard-shortcuts-inhibit_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action toggle-keyboard-shortcuts-inhibit commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__toggle-overview_commands] )) ||
_niri__help__msg__action__toggle-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action toggle-overview commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__toggle-window-floating_commands] )) ||
_niri__help__msg__action__toggle-window-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action toggle-window-floating commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__toggle-window-rule-opacity_commands] )) ||
_niri__help__msg__action__toggle-window-rule-opacity_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action toggle-window-rule-opacity commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__toggle-window-urgent_commands] )) ||
_niri__help__msg__action__toggle-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action toggle-window-urgent commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__toggle-windowed-fullscreen_commands] )) ||
_niri__help__msg__action__toggle-windowed-fullscreen_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action toggle-windowed-fullscreen commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__unset-window-urgent_commands] )) ||
_niri__help__msg__action__unset-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action unset-window-urgent commands' commands "$@"
}
(( $+functions[_niri__help__msg__action__unset-workspace-name_commands] )) ||
_niri__help__msg__action__unset-workspace-name_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg action unset-workspace-name commands' commands "$@"
}
(( $+functions[_niri__help__msg__event-stream_commands] )) ||
_niri__help__msg__event-stream_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg event-stream commands' commands "$@"
}
(( $+functions[_niri__help__msg__focused-output_commands] )) ||
_niri__help__msg__focused-output_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg focused-output commands' commands "$@"
}
(( $+functions[_niri__help__msg__focused-window_commands] )) ||
_niri__help__msg__focused-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg focused-window commands' commands "$@"
}
(( $+functions[_niri__help__msg__keyboard-layouts_commands] )) ||
_niri__help__msg__keyboard-layouts_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg keyboard-layouts commands' commands "$@"
}
(( $+functions[_niri__help__msg__layers_commands] )) ||
_niri__help__msg__layers_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg layers commands' commands "$@"
}
(( $+functions[_niri__help__msg__output_commands] )) ||
_niri__help__msg__output_commands() {
    local commands; commands=(
'off:Turn off the output' \
'on:Turn on the output' \
'mode:Set the output mode' \
'scale:Set the output scale' \
'transform:Set the output transform' \
'position:Set the output position' \
'vrr:Set the variable refresh rate mode' \
    )
    _describe -t commands 'niri help msg output commands' commands "$@"
}
(( $+functions[_niri__help__msg__output__mode_commands] )) ||
_niri__help__msg__output__mode_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg output mode commands' commands "$@"
}
(( $+functions[_niri__help__msg__output__off_commands] )) ||
_niri__help__msg__output__off_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg output off commands' commands "$@"
}
(( $+functions[_niri__help__msg__output__on_commands] )) ||
_niri__help__msg__output__on_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg output on commands' commands "$@"
}
(( $+functions[_niri__help__msg__output__position_commands] )) ||
_niri__help__msg__output__position_commands() {
    local commands; commands=(
'auto:Position the output automatically' \
'set:Set a specific position' \
    )
    _describe -t commands 'niri help msg output position commands' commands "$@"
}
(( $+functions[_niri__help__msg__output__position__auto_commands] )) ||
_niri__help__msg__output__position__auto_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg output position auto commands' commands "$@"
}
(( $+functions[_niri__help__msg__output__position__set_commands] )) ||
_niri__help__msg__output__position__set_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg output position set commands' commands "$@"
}
(( $+functions[_niri__help__msg__output__scale_commands] )) ||
_niri__help__msg__output__scale_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg output scale commands' commands "$@"
}
(( $+functions[_niri__help__msg__output__transform_commands] )) ||
_niri__help__msg__output__transform_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg output transform commands' commands "$@"
}
(( $+functions[_niri__help__msg__output__vrr_commands] )) ||
_niri__help__msg__output__vrr_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg output vrr commands' commands "$@"
}
(( $+functions[_niri__help__msg__outputs_commands] )) ||
_niri__help__msg__outputs_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg outputs commands' commands "$@"
}
(( $+functions[_niri__help__msg__overview-state_commands] )) ||
_niri__help__msg__overview-state_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg overview-state commands' commands "$@"
}
(( $+functions[_niri__help__msg__pick-color_commands] )) ||
_niri__help__msg__pick-color_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg pick-color commands' commands "$@"
}
(( $+functions[_niri__help__msg__pick-window_commands] )) ||
_niri__help__msg__pick-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg pick-window commands' commands "$@"
}
(( $+functions[_niri__help__msg__request-error_commands] )) ||
_niri__help__msg__request-error_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg request-error commands' commands "$@"
}
(( $+functions[_niri__help__msg__version_commands] )) ||
_niri__help__msg__version_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg version commands' commands "$@"
}
(( $+functions[_niri__help__msg__windows_commands] )) ||
_niri__help__msg__windows_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg windows commands' commands "$@"
}
(( $+functions[_niri__help__msg__workspaces_commands] )) ||
_niri__help__msg__workspaces_commands() {
    local commands; commands=()
    _describe -t commands 'niri help msg workspaces commands' commands "$@"
}
(( $+functions[_niri__help__panic_commands] )) ||
_niri__help__panic_commands() {
    local commands; commands=()
    _describe -t commands 'niri help panic commands' commands "$@"
}
(( $+functions[_niri__help__validate_commands] )) ||
_niri__help__validate_commands() {
    local commands; commands=()
    _describe -t commands 'niri help validate commands' commands "$@"
}
(( $+functions[_niri__msg_commands] )) ||
_niri__msg_commands() {
    local commands; commands=(
'outputs:List connected outputs' \
'workspaces:List workspaces' \
'windows:List open windows' \
'layers:List open layer-shell surfaces' \
'keyboard-layouts:Get the configured keyboard layouts' \
'focused-output:Print information about the focused output' \
'focused-window:Print information about the focused window' \
'pick-window:Pick a window with the mouse and print information about it' \
'pick-color:Pick a color from the screen with the mouse' \
'action:Perform an action' \
'output:Change output configuration temporarily' \
'event-stream:Start continuously receiving events from the compositor' \
'version:Print the version of the running niri instance' \
'request-error:Request an error from the running niri instance' \
'overview-state:Print the overview state' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri msg commands' commands "$@"
}
(( $+functions[_niri__msg__action_commands] )) ||
_niri__msg__action_commands() {
    local commands; commands=(
'quit:Exit niri' \
'power-off-monitors:Power off all monitors via DPMS' \
'power-on-monitors:Power on all monitors via DPMS' \
'spawn:Spawn a command' \
'do-screen-transition:Do a screen transition' \
'screenshot:Open the screenshot UI' \
'screenshot-screen:Screenshot the focused screen' \
'screenshot-window:Screenshot the focused window' \
'toggle-keyboard-shortcuts-inhibit:Enable or disable the keyboard shortcuts inhibitor (if any) for the focused surface' \
'close-window:Close the focused window' \
'fullscreen-window:Toggle fullscreen on the focused window' \
'toggle-windowed-fullscreen:Toggle windowed (fake) fullscreen on the focused window' \
'focus-window:Focus a window by id' \
'focus-window-in-column:Focus a window in the focused column by index' \
'focus-window-previous:Focus the previously focused window' \
'focus-column-left:Focus the column to the left' \
'focus-column-right:Focus the column to the right' \
'focus-column-first:Focus the first column' \
'focus-column-last:Focus the last column' \
'focus-column-right-or-first:Focus the next column to the right, looping if at end' \
'focus-column-left-or-last:Focus the next column to the left, looping if at start' \
'focus-column:Focus a column by index' \
'focus-window-or-monitor-up:Focus the window or the monitor above' \
'focus-window-or-monitor-down:Focus the window or the monitor below' \
'focus-column-or-monitor-left:Focus the column or the monitor to the left' \
'focus-column-or-monitor-right:Focus the column or the monitor to the right' \
'focus-window-down:Focus the window below' \
'focus-window-up:Focus the window above' \
'focus-window-down-or-column-left:Focus the window below or the column to the left' \
'focus-window-down-or-column-right:Focus the window below or the column to the right' \
'focus-window-up-or-column-left:Focus the window above or the column to the left' \
'focus-window-up-or-column-right:Focus the window above or the column to the right' \
'focus-window-or-workspace-down:Focus the window or the workspace above' \
'focus-window-or-workspace-up:Focus the window or the workspace above' \
'focus-window-top:Focus the topmost window' \
'focus-window-bottom:Focus the bottommost window' \
'focus-window-down-or-top:Focus the window below or the topmost window' \
'focus-window-up-or-bottom:Focus the window above or the bottommost window' \
'move-column-left:Move the focused column to the left' \
'move-column-right:Move the focused column to the right' \
'move-column-to-first:Move the focused column to the start of the workspace' \
'move-column-to-last:Move the focused column to the end of the workspace' \
'move-column-left-or-to-monitor-left:Move the focused column to the left or to the monitor to the left' \
'move-column-right-or-to-monitor-right:Move the focused column to the right or to the monitor to the right' \
'move-column-to-index:Move the focused column to a specific index on its workspace' \
'move-window-down:Move the focused window down in a column' \
'move-window-up:Move the focused window up in a column' \
'move-window-down-or-to-workspace-down:Move the focused window down in a column or to the workspace below' \
'move-window-up-or-to-workspace-up:Move the focused window up in a column or to the workspace above' \
'consume-or-expel-window-left:Consume or expel the focused window left' \
'consume-or-expel-window-right:Consume or expel the focused window right' \
'consume-window-into-column:Consume the window to the right into the focused column' \
'expel-window-from-column:Expel the focused window from the column' \
'swap-window-right:Swap focused window with one to the right' \
'swap-window-left:Swap focused window with one to the left' \
'toggle-column-tabbed-display:Toggle the focused column between normal and tabbed display' \
'set-column-display:Set the display mode of the focused column' \
'center-column:Center the focused column on the screen' \
'center-window:Center the focused window on the screen' \
'center-visible-columns:Center all fully visible columns on the screen' \
'focus-workspace-down:Focus the workspace below' \
'focus-workspace-up:Focus the workspace above' \
'focus-workspace:Focus a workspace by reference (index or name)' \
'focus-workspace-previous:Focus the previous workspace' \
'move-window-to-workspace-down:Move the focused window to the workspace below' \
'move-window-to-workspace-up:Move the focused window to the workspace above' \
'move-window-to-workspace:Move the focused window to a workspace by reference (index or name)' \
'move-column-to-workspace-down:Move the focused column to the workspace below' \
'move-column-to-workspace-up:Move the focused column to the workspace above' \
'move-column-to-workspace:Move the focused column to a workspace by reference (index or name)' \
'move-workspace-down:Move the focused workspace down' \
'move-workspace-up:Move the focused workspace up' \
'move-workspace-to-index:Move the focused workspace to a specific index on its monitor' \
'set-workspace-name:Set the name of the focused workspace' \
'unset-workspace-name:Unset the name of the focused workspace' \
'focus-monitor-left:Focus the monitor to the left' \
'focus-monitor-right:Focus the monitor to the right' \
'focus-monitor-down:Focus the monitor below' \
'focus-monitor-up:Focus the monitor above' \
'focus-monitor-previous:Focus the previous monitor' \
'focus-monitor-next:Focus the next monitor' \
'focus-monitor:Focus a monitor by name' \
'move-window-to-monitor-left:Move the focused window to the monitor to the left' \
'move-window-to-monitor-right:Move the focused window to the monitor to the right' \
'move-window-to-monitor-down:Move the focused window to the monitor below' \
'move-window-to-monitor-up:Move the focused window to the monitor above' \
'move-window-to-monitor-previous:Move the focused window to the previous monitor' \
'move-window-to-monitor-next:Move the focused window to the next monitor' \
'move-window-to-monitor:Move the focused window to a specific monitor' \
'move-column-to-monitor-left:Move the focused column to the monitor to the left' \
'move-column-to-monitor-right:Move the focused column to the monitor to the right' \
'move-column-to-monitor-down:Move the focused column to the monitor below' \
'move-column-to-monitor-up:Move the focused column to the monitor above' \
'move-column-to-monitor-previous:Move the focused column to the previous monitor' \
'move-column-to-monitor-next:Move the focused column to the next monitor' \
'move-column-to-monitor:Move the focused column to a specific monitor' \
'set-window-width:Change the width of the focused window' \
'set-window-height:Change the height of the focused window' \
'reset-window-height:Reset the height of the focused window back to automatic' \
'switch-preset-column-width:Switch between preset column widths' \
'switch-preset-window-width:Switch between preset window widths' \
'switch-preset-window-height:Switch between preset window heights' \
'maximize-column:Toggle the maximized state of the focused column' \
'set-column-width:Change the width of the focused column' \
'expand-column-to-available-width:Expand the focused column to space not taken up by other fully visible columns' \
'switch-layout:Switch between keyboard layouts' \
'show-hotkey-overlay:Show the hotkey overlay' \
'move-workspace-to-monitor-left:Move the focused workspace to the monitor to the left' \
'move-workspace-to-monitor-right:Move the focused workspace to the monitor to the right' \
'move-workspace-to-monitor-down:Move the focused workspace to the monitor below' \
'move-workspace-to-monitor-up:Move the focused workspace to the monitor above' \
'move-workspace-to-monitor-previous:Move the focused workspace to the previous monitor' \
'move-workspace-to-monitor-next:Move the focused workspace to the next monitor' \
'move-workspace-to-monitor:Move the focused workspace to a specific monitor' \
'toggle-debug-tint:Toggle a debug tint on windows' \
'debug-toggle-opaque-regions:Toggle visualization of render element opaque regions' \
'debug-toggle-damage:Toggle visualization of output damage' \
'toggle-window-floating:Move the focused window between the floating and the tiling layout' \
'move-window-to-floating:Move the focused window to the floating layout' \
'move-window-to-tiling:Move the focused window to the tiling layout' \
'focus-floating:Switches focus to the floating layout' \
'focus-tiling:Switches focus to the tiling layout' \
'switch-focus-between-floating-and-tiling:Toggles the focus between the floating and the tiling layout' \
'move-floating-window:Move the floating window on screen' \
'toggle-window-rule-opacity:Toggle the opacity of the focused window' \
'set-dynamic-cast-window:Set the dynamic cast target to the focused window' \
'set-dynamic-cast-monitor:Set the dynamic cast target to the focused monitor' \
'clear-dynamic-cast-target:Clear the dynamic cast target, making it show nothing' \
'toggle-overview:Toggle (open/close) the Overview' \
'open-overview:Open the Overview' \
'close-overview:Close the Overview' \
'toggle-window-urgent:Toggle urgent status of a window' \
'set-window-urgent:Set urgent status of a window' \
'unset-window-urgent:Unset urgent status of a window' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri msg action commands' commands "$@"
}
(( $+functions[_niri__msg__action__center-column_commands] )) ||
_niri__msg__action__center-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action center-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__center-visible-columns_commands] )) ||
_niri__msg__action__center-visible-columns_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action center-visible-columns commands' commands "$@"
}
(( $+functions[_niri__msg__action__center-window_commands] )) ||
_niri__msg__action__center-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action center-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__clear-dynamic-cast-target_commands] )) ||
_niri__msg__action__clear-dynamic-cast-target_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action clear-dynamic-cast-target commands' commands "$@"
}
(( $+functions[_niri__msg__action__close-overview_commands] )) ||
_niri__msg__action__close-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action close-overview commands' commands "$@"
}
(( $+functions[_niri__msg__action__close-window_commands] )) ||
_niri__msg__action__close-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action close-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__consume-or-expel-window-left_commands] )) ||
_niri__msg__action__consume-or-expel-window-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action consume-or-expel-window-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__consume-or-expel-window-right_commands] )) ||
_niri__msg__action__consume-or-expel-window-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action consume-or-expel-window-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__consume-window-into-column_commands] )) ||
_niri__msg__action__consume-window-into-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action consume-window-into-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__debug-toggle-damage_commands] )) ||
_niri__msg__action__debug-toggle-damage_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action debug-toggle-damage commands' commands "$@"
}
(( $+functions[_niri__msg__action__debug-toggle-opaque-regions_commands] )) ||
_niri__msg__action__debug-toggle-opaque-regions_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action debug-toggle-opaque-regions commands' commands "$@"
}
(( $+functions[_niri__msg__action__do-screen-transition_commands] )) ||
_niri__msg__action__do-screen-transition_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action do-screen-transition commands' commands "$@"
}
(( $+functions[_niri__msg__action__expand-column-to-available-width_commands] )) ||
_niri__msg__action__expand-column-to-available-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action expand-column-to-available-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__expel-window-from-column_commands] )) ||
_niri__msg__action__expel-window-from-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action expel-window-from-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-column_commands] )) ||
_niri__msg__action__focus-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-column-first_commands] )) ||
_niri__msg__action__focus-column-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-column-first commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-column-last_commands] )) ||
_niri__msg__action__focus-column-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-column-last commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-column-left_commands] )) ||
_niri__msg__action__focus-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-column-left-or-last_commands] )) ||
_niri__msg__action__focus-column-left-or-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-column-left-or-last commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-column-or-monitor-left_commands] )) ||
_niri__msg__action__focus-column-or-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-column-or-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-column-or-monitor-right_commands] )) ||
_niri__msg__action__focus-column-or-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-column-or-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-column-right_commands] )) ||
_niri__msg__action__focus-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-column-right-or-first_commands] )) ||
_niri__msg__action__focus-column-right-or-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-column-right-or-first commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-floating_commands] )) ||
_niri__msg__action__focus-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-floating commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-monitor_commands] )) ||
_niri__msg__action__focus-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-monitor-down_commands] )) ||
_niri__msg__action__focus-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-monitor-left_commands] )) ||
_niri__msg__action__focus-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-monitor-next_commands] )) ||
_niri__msg__action__focus-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-monitor-previous_commands] )) ||
_niri__msg__action__focus-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-monitor-right_commands] )) ||
_niri__msg__action__focus-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-monitor-up_commands] )) ||
_niri__msg__action__focus-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-tiling_commands] )) ||
_niri__msg__action__focus-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-tiling commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window_commands] )) ||
_niri__msg__action__focus-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-bottom_commands] )) ||
_niri__msg__action__focus-window-bottom_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-bottom commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-down_commands] )) ||
_niri__msg__action__focus-window-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-down-or-column-left_commands] )) ||
_niri__msg__action__focus-window-down-or-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-down-or-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-down-or-column-right_commands] )) ||
_niri__msg__action__focus-window-down-or-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-down-or-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-down-or-top_commands] )) ||
_niri__msg__action__focus-window-down-or-top_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-down-or-top commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-in-column_commands] )) ||
_niri__msg__action__focus-window-in-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-in-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-or-monitor-down_commands] )) ||
_niri__msg__action__focus-window-or-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-or-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-or-monitor-up_commands] )) ||
_niri__msg__action__focus-window-or-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-or-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-or-workspace-down_commands] )) ||
_niri__msg__action__focus-window-or-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-or-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-or-workspace-up_commands] )) ||
_niri__msg__action__focus-window-or-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-or-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-previous_commands] )) ||
_niri__msg__action__focus-window-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-top_commands] )) ||
_niri__msg__action__focus-window-top_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-top commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-up_commands] )) ||
_niri__msg__action__focus-window-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-up-or-bottom_commands] )) ||
_niri__msg__action__focus-window-up-or-bottom_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-up-or-bottom commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-up-or-column-left_commands] )) ||
_niri__msg__action__focus-window-up-or-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-up-or-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-window-up-or-column-right_commands] )) ||
_niri__msg__action__focus-window-up-or-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-window-up-or-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-workspace_commands] )) ||
_niri__msg__action__focus-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-workspace commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-workspace-down_commands] )) ||
_niri__msg__action__focus-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-workspace-previous_commands] )) ||
_niri__msg__action__focus-workspace-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-workspace-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__focus-workspace-up_commands] )) ||
_niri__msg__action__focus-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action focus-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__fullscreen-window_commands] )) ||
_niri__msg__action__fullscreen-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action fullscreen-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__help_commands] )) ||
_niri__msg__action__help_commands() {
    local commands; commands=(
'quit:Exit niri' \
'power-off-monitors:Power off all monitors via DPMS' \
'power-on-monitors:Power on all monitors via DPMS' \
'spawn:Spawn a command' \
'do-screen-transition:Do a screen transition' \
'screenshot:Open the screenshot UI' \
'screenshot-screen:Screenshot the focused screen' \
'screenshot-window:Screenshot the focused window' \
'toggle-keyboard-shortcuts-inhibit:Enable or disable the keyboard shortcuts inhibitor (if any) for the focused surface' \
'close-window:Close the focused window' \
'fullscreen-window:Toggle fullscreen on the focused window' \
'toggle-windowed-fullscreen:Toggle windowed (fake) fullscreen on the focused window' \
'focus-window:Focus a window by id' \
'focus-window-in-column:Focus a window in the focused column by index' \
'focus-window-previous:Focus the previously focused window' \
'focus-column-left:Focus the column to the left' \
'focus-column-right:Focus the column to the right' \
'focus-column-first:Focus the first column' \
'focus-column-last:Focus the last column' \
'focus-column-right-or-first:Focus the next column to the right, looping if at end' \
'focus-column-left-or-last:Focus the next column to the left, looping if at start' \
'focus-column:Focus a column by index' \
'focus-window-or-monitor-up:Focus the window or the monitor above' \
'focus-window-or-monitor-down:Focus the window or the monitor below' \
'focus-column-or-monitor-left:Focus the column or the monitor to the left' \
'focus-column-or-monitor-right:Focus the column or the monitor to the right' \
'focus-window-down:Focus the window below' \
'focus-window-up:Focus the window above' \
'focus-window-down-or-column-left:Focus the window below or the column to the left' \
'focus-window-down-or-column-right:Focus the window below or the column to the right' \
'focus-window-up-or-column-left:Focus the window above or the column to the left' \
'focus-window-up-or-column-right:Focus the window above or the column to the right' \
'focus-window-or-workspace-down:Focus the window or the workspace above' \
'focus-window-or-workspace-up:Focus the window or the workspace above' \
'focus-window-top:Focus the topmost window' \
'focus-window-bottom:Focus the bottommost window' \
'focus-window-down-or-top:Focus the window below or the topmost window' \
'focus-window-up-or-bottom:Focus the window above or the bottommost window' \
'move-column-left:Move the focused column to the left' \
'move-column-right:Move the focused column to the right' \
'move-column-to-first:Move the focused column to the start of the workspace' \
'move-column-to-last:Move the focused column to the end of the workspace' \
'move-column-left-or-to-monitor-left:Move the focused column to the left or to the monitor to the left' \
'move-column-right-or-to-monitor-right:Move the focused column to the right or to the monitor to the right' \
'move-column-to-index:Move the focused column to a specific index on its workspace' \
'move-window-down:Move the focused window down in a column' \
'move-window-up:Move the focused window up in a column' \
'move-window-down-or-to-workspace-down:Move the focused window down in a column or to the workspace below' \
'move-window-up-or-to-workspace-up:Move the focused window up in a column or to the workspace above' \
'consume-or-expel-window-left:Consume or expel the focused window left' \
'consume-or-expel-window-right:Consume or expel the focused window right' \
'consume-window-into-column:Consume the window to the right into the focused column' \
'expel-window-from-column:Expel the focused window from the column' \
'swap-window-right:Swap focused window with one to the right' \
'swap-window-left:Swap focused window with one to the left' \
'toggle-column-tabbed-display:Toggle the focused column between normal and tabbed display' \
'set-column-display:Set the display mode of the focused column' \
'center-column:Center the focused column on the screen' \
'center-window:Center the focused window on the screen' \
'center-visible-columns:Center all fully visible columns on the screen' \
'focus-workspace-down:Focus the workspace below' \
'focus-workspace-up:Focus the workspace above' \
'focus-workspace:Focus a workspace by reference (index or name)' \
'focus-workspace-previous:Focus the previous workspace' \
'move-window-to-workspace-down:Move the focused window to the workspace below' \
'move-window-to-workspace-up:Move the focused window to the workspace above' \
'move-window-to-workspace:Move the focused window to a workspace by reference (index or name)' \
'move-column-to-workspace-down:Move the focused column to the workspace below' \
'move-column-to-workspace-up:Move the focused column to the workspace above' \
'move-column-to-workspace:Move the focused column to a workspace by reference (index or name)' \
'move-workspace-down:Move the focused workspace down' \
'move-workspace-up:Move the focused workspace up' \
'move-workspace-to-index:Move the focused workspace to a specific index on its monitor' \
'set-workspace-name:Set the name of the focused workspace' \
'unset-workspace-name:Unset the name of the focused workspace' \
'focus-monitor-left:Focus the monitor to the left' \
'focus-monitor-right:Focus the monitor to the right' \
'focus-monitor-down:Focus the monitor below' \
'focus-monitor-up:Focus the monitor above' \
'focus-monitor-previous:Focus the previous monitor' \
'focus-monitor-next:Focus the next monitor' \
'focus-monitor:Focus a monitor by name' \
'move-window-to-monitor-left:Move the focused window to the monitor to the left' \
'move-window-to-monitor-right:Move the focused window to the monitor to the right' \
'move-window-to-monitor-down:Move the focused window to the monitor below' \
'move-window-to-monitor-up:Move the focused window to the monitor above' \
'move-window-to-monitor-previous:Move the focused window to the previous monitor' \
'move-window-to-monitor-next:Move the focused window to the next monitor' \
'move-window-to-monitor:Move the focused window to a specific monitor' \
'move-column-to-monitor-left:Move the focused column to the monitor to the left' \
'move-column-to-monitor-right:Move the focused column to the monitor to the right' \
'move-column-to-monitor-down:Move the focused column to the monitor below' \
'move-column-to-monitor-up:Move the focused column to the monitor above' \
'move-column-to-monitor-previous:Move the focused column to the previous monitor' \
'move-column-to-monitor-next:Move the focused column to the next monitor' \
'move-column-to-monitor:Move the focused column to a specific monitor' \
'set-window-width:Change the width of the focused window' \
'set-window-height:Change the height of the focused window' \
'reset-window-height:Reset the height of the focused window back to automatic' \
'switch-preset-column-width:Switch between preset column widths' \
'switch-preset-window-width:Switch between preset window widths' \
'switch-preset-window-height:Switch between preset window heights' \
'maximize-column:Toggle the maximized state of the focused column' \
'set-column-width:Change the width of the focused column' \
'expand-column-to-available-width:Expand the focused column to space not taken up by other fully visible columns' \
'switch-layout:Switch between keyboard layouts' \
'show-hotkey-overlay:Show the hotkey overlay' \
'move-workspace-to-monitor-left:Move the focused workspace to the monitor to the left' \
'move-workspace-to-monitor-right:Move the focused workspace to the monitor to the right' \
'move-workspace-to-monitor-down:Move the focused workspace to the monitor below' \
'move-workspace-to-monitor-up:Move the focused workspace to the monitor above' \
'move-workspace-to-monitor-previous:Move the focused workspace to the previous monitor' \
'move-workspace-to-monitor-next:Move the focused workspace to the next monitor' \
'move-workspace-to-monitor:Move the focused workspace to a specific monitor' \
'toggle-debug-tint:Toggle a debug tint on windows' \
'debug-toggle-opaque-regions:Toggle visualization of render element opaque regions' \
'debug-toggle-damage:Toggle visualization of output damage' \
'toggle-window-floating:Move the focused window between the floating and the tiling layout' \
'move-window-to-floating:Move the focused window to the floating layout' \
'move-window-to-tiling:Move the focused window to the tiling layout' \
'focus-floating:Switches focus to the floating layout' \
'focus-tiling:Switches focus to the tiling layout' \
'switch-focus-between-floating-and-tiling:Toggles the focus between the floating and the tiling layout' \
'move-floating-window:Move the floating window on screen' \
'toggle-window-rule-opacity:Toggle the opacity of the focused window' \
'set-dynamic-cast-window:Set the dynamic cast target to the focused window' \
'set-dynamic-cast-monitor:Set the dynamic cast target to the focused monitor' \
'clear-dynamic-cast-target:Clear the dynamic cast target, making it show nothing' \
'toggle-overview:Toggle (open/close) the Overview' \
'open-overview:Open the Overview' \
'close-overview:Close the Overview' \
'toggle-window-urgent:Toggle urgent status of a window' \
'set-window-urgent:Set urgent status of a window' \
'unset-window-urgent:Unset urgent status of a window' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri msg action help commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__center-column_commands] )) ||
_niri__msg__action__help__center-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help center-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__center-visible-columns_commands] )) ||
_niri__msg__action__help__center-visible-columns_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help center-visible-columns commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__center-window_commands] )) ||
_niri__msg__action__help__center-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help center-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__clear-dynamic-cast-target_commands] )) ||
_niri__msg__action__help__clear-dynamic-cast-target_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help clear-dynamic-cast-target commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__close-overview_commands] )) ||
_niri__msg__action__help__close-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help close-overview commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__close-window_commands] )) ||
_niri__msg__action__help__close-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help close-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__consume-or-expel-window-left_commands] )) ||
_niri__msg__action__help__consume-or-expel-window-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help consume-or-expel-window-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__consume-or-expel-window-right_commands] )) ||
_niri__msg__action__help__consume-or-expel-window-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help consume-or-expel-window-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__consume-window-into-column_commands] )) ||
_niri__msg__action__help__consume-window-into-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help consume-window-into-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__debug-toggle-damage_commands] )) ||
_niri__msg__action__help__debug-toggle-damage_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help debug-toggle-damage commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__debug-toggle-opaque-regions_commands] )) ||
_niri__msg__action__help__debug-toggle-opaque-regions_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help debug-toggle-opaque-regions commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__do-screen-transition_commands] )) ||
_niri__msg__action__help__do-screen-transition_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help do-screen-transition commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__expand-column-to-available-width_commands] )) ||
_niri__msg__action__help__expand-column-to-available-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help expand-column-to-available-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__expel-window-from-column_commands] )) ||
_niri__msg__action__help__expel-window-from-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help expel-window-from-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-column_commands] )) ||
_niri__msg__action__help__focus-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-column-first_commands] )) ||
_niri__msg__action__help__focus-column-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-column-first commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-column-last_commands] )) ||
_niri__msg__action__help__focus-column-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-column-last commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-column-left_commands] )) ||
_niri__msg__action__help__focus-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-column-left-or-last_commands] )) ||
_niri__msg__action__help__focus-column-left-or-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-column-left-or-last commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-column-or-monitor-left_commands] )) ||
_niri__msg__action__help__focus-column-or-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-column-or-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-column-or-monitor-right_commands] )) ||
_niri__msg__action__help__focus-column-or-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-column-or-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-column-right_commands] )) ||
_niri__msg__action__help__focus-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-column-right-or-first_commands] )) ||
_niri__msg__action__help__focus-column-right-or-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-column-right-or-first commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-floating_commands] )) ||
_niri__msg__action__help__focus-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-floating commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-monitor_commands] )) ||
_niri__msg__action__help__focus-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-monitor-down_commands] )) ||
_niri__msg__action__help__focus-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-monitor-left_commands] )) ||
_niri__msg__action__help__focus-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-monitor-next_commands] )) ||
_niri__msg__action__help__focus-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-monitor-previous_commands] )) ||
_niri__msg__action__help__focus-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-monitor-right_commands] )) ||
_niri__msg__action__help__focus-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-monitor-up_commands] )) ||
_niri__msg__action__help__focus-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-tiling_commands] )) ||
_niri__msg__action__help__focus-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-tiling commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window_commands] )) ||
_niri__msg__action__help__focus-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-bottom_commands] )) ||
_niri__msg__action__help__focus-window-bottom_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-bottom commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-down_commands] )) ||
_niri__msg__action__help__focus-window-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-down-or-column-left_commands] )) ||
_niri__msg__action__help__focus-window-down-or-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-down-or-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-down-or-column-right_commands] )) ||
_niri__msg__action__help__focus-window-down-or-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-down-or-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-down-or-top_commands] )) ||
_niri__msg__action__help__focus-window-down-or-top_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-down-or-top commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-in-column_commands] )) ||
_niri__msg__action__help__focus-window-in-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-in-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-or-monitor-down_commands] )) ||
_niri__msg__action__help__focus-window-or-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-or-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-or-monitor-up_commands] )) ||
_niri__msg__action__help__focus-window-or-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-or-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-or-workspace-down_commands] )) ||
_niri__msg__action__help__focus-window-or-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-or-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-or-workspace-up_commands] )) ||
_niri__msg__action__help__focus-window-or-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-or-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-previous_commands] )) ||
_niri__msg__action__help__focus-window-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-top_commands] )) ||
_niri__msg__action__help__focus-window-top_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-top commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-up_commands] )) ||
_niri__msg__action__help__focus-window-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-up-or-bottom_commands] )) ||
_niri__msg__action__help__focus-window-up-or-bottom_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-up-or-bottom commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-up-or-column-left_commands] )) ||
_niri__msg__action__help__focus-window-up-or-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-up-or-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-window-up-or-column-right_commands] )) ||
_niri__msg__action__help__focus-window-up-or-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-window-up-or-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-workspace_commands] )) ||
_niri__msg__action__help__focus-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-workspace commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-workspace-down_commands] )) ||
_niri__msg__action__help__focus-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-workspace-previous_commands] )) ||
_niri__msg__action__help__focus-workspace-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-workspace-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__focus-workspace-up_commands] )) ||
_niri__msg__action__help__focus-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help focus-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__fullscreen-window_commands] )) ||
_niri__msg__action__help__fullscreen-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help fullscreen-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__help_commands] )) ||
_niri__msg__action__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help help commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__maximize-column_commands] )) ||
_niri__msg__action__help__maximize-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help maximize-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-left_commands] )) ||
_niri__msg__action__help__move-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-left-or-to-monitor-left_commands] )) ||
_niri__msg__action__help__move-column-left-or-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-left-or-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-right_commands] )) ||
_niri__msg__action__help__move-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-right-or-to-monitor-right_commands] )) ||
_niri__msg__action__help__move-column-right-or-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-right-or-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-first_commands] )) ||
_niri__msg__action__help__move-column-to-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-first commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-index_commands] )) ||
_niri__msg__action__help__move-column-to-index_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-index commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-last_commands] )) ||
_niri__msg__action__help__move-column-to-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-last commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-monitor_commands] )) ||
_niri__msg__action__help__move-column-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-monitor-down_commands] )) ||
_niri__msg__action__help__move-column-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-monitor-left_commands] )) ||
_niri__msg__action__help__move-column-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-monitor-next_commands] )) ||
_niri__msg__action__help__move-column-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-monitor-previous_commands] )) ||
_niri__msg__action__help__move-column-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-monitor-right_commands] )) ||
_niri__msg__action__help__move-column-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-monitor-up_commands] )) ||
_niri__msg__action__help__move-column-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-workspace_commands] )) ||
_niri__msg__action__help__move-column-to-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-workspace commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-workspace-down_commands] )) ||
_niri__msg__action__help__move-column-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-column-to-workspace-up_commands] )) ||
_niri__msg__action__help__move-column-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-column-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-floating-window_commands] )) ||
_niri__msg__action__help__move-floating-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-floating-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-down_commands] )) ||
_niri__msg__action__help__move-window-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-down-or-to-workspace-down_commands] )) ||
_niri__msg__action__help__move-window-down-or-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-down-or-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-floating_commands] )) ||
_niri__msg__action__help__move-window-to-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-floating commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-monitor_commands] )) ||
_niri__msg__action__help__move-window-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-monitor-down_commands] )) ||
_niri__msg__action__help__move-window-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-monitor-left_commands] )) ||
_niri__msg__action__help__move-window-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-monitor-next_commands] )) ||
_niri__msg__action__help__move-window-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-monitor-previous_commands] )) ||
_niri__msg__action__help__move-window-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-monitor-right_commands] )) ||
_niri__msg__action__help__move-window-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-monitor-up_commands] )) ||
_niri__msg__action__help__move-window-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-tiling_commands] )) ||
_niri__msg__action__help__move-window-to-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-tiling commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-workspace_commands] )) ||
_niri__msg__action__help__move-window-to-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-workspace commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-workspace-down_commands] )) ||
_niri__msg__action__help__move-window-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-to-workspace-up_commands] )) ||
_niri__msg__action__help__move-window-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-up_commands] )) ||
_niri__msg__action__help__move-window-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-window-up-or-to-workspace-up_commands] )) ||
_niri__msg__action__help__move-window-up-or-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-window-up-or-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-down_commands] )) ||
_niri__msg__action__help__move-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-to-index_commands] )) ||
_niri__msg__action__help__move-workspace-to-index_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-to-index commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-to-monitor_commands] )) ||
_niri__msg__action__help__move-workspace-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-to-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-to-monitor-down_commands] )) ||
_niri__msg__action__help__move-workspace-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-to-monitor-left_commands] )) ||
_niri__msg__action__help__move-workspace-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-to-monitor-next_commands] )) ||
_niri__msg__action__help__move-workspace-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-to-monitor-previous_commands] )) ||
_niri__msg__action__help__move-workspace-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-to-monitor-right_commands] )) ||
_niri__msg__action__help__move-workspace-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-to-monitor-up_commands] )) ||
_niri__msg__action__help__move-workspace-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__move-workspace-up_commands] )) ||
_niri__msg__action__help__move-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help move-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__open-overview_commands] )) ||
_niri__msg__action__help__open-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help open-overview commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__power-off-monitors_commands] )) ||
_niri__msg__action__help__power-off-monitors_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help power-off-monitors commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__power-on-monitors_commands] )) ||
_niri__msg__action__help__power-on-monitors_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help power-on-monitors commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__quit_commands] )) ||
_niri__msg__action__help__quit_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help quit commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__reset-window-height_commands] )) ||
_niri__msg__action__help__reset-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help reset-window-height commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__screenshot_commands] )) ||
_niri__msg__action__help__screenshot_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help screenshot commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__screenshot-screen_commands] )) ||
_niri__msg__action__help__screenshot-screen_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help screenshot-screen commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__screenshot-window_commands] )) ||
_niri__msg__action__help__screenshot-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help screenshot-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__set-column-display_commands] )) ||
_niri__msg__action__help__set-column-display_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help set-column-display commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__set-column-width_commands] )) ||
_niri__msg__action__help__set-column-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help set-column-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__set-dynamic-cast-monitor_commands] )) ||
_niri__msg__action__help__set-dynamic-cast-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help set-dynamic-cast-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__set-dynamic-cast-window_commands] )) ||
_niri__msg__action__help__set-dynamic-cast-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help set-dynamic-cast-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__set-window-height_commands] )) ||
_niri__msg__action__help__set-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help set-window-height commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__set-window-urgent_commands] )) ||
_niri__msg__action__help__set-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help set-window-urgent commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__set-window-width_commands] )) ||
_niri__msg__action__help__set-window-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help set-window-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__set-workspace-name_commands] )) ||
_niri__msg__action__help__set-workspace-name_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help set-workspace-name commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__show-hotkey-overlay_commands] )) ||
_niri__msg__action__help__show-hotkey-overlay_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help show-hotkey-overlay commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__spawn_commands] )) ||
_niri__msg__action__help__spawn_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help spawn commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__swap-window-left_commands] )) ||
_niri__msg__action__help__swap-window-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help swap-window-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__swap-window-right_commands] )) ||
_niri__msg__action__help__swap-window-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help swap-window-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__switch-focus-between-floating-and-tiling_commands] )) ||
_niri__msg__action__help__switch-focus-between-floating-and-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help switch-focus-between-floating-and-tiling commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__switch-layout_commands] )) ||
_niri__msg__action__help__switch-layout_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help switch-layout commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__switch-preset-column-width_commands] )) ||
_niri__msg__action__help__switch-preset-column-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help switch-preset-column-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__switch-preset-window-height_commands] )) ||
_niri__msg__action__help__switch-preset-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help switch-preset-window-height commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__switch-preset-window-width_commands] )) ||
_niri__msg__action__help__switch-preset-window-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help switch-preset-window-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__toggle-column-tabbed-display_commands] )) ||
_niri__msg__action__help__toggle-column-tabbed-display_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help toggle-column-tabbed-display commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__toggle-debug-tint_commands] )) ||
_niri__msg__action__help__toggle-debug-tint_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help toggle-debug-tint commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__toggle-keyboard-shortcuts-inhibit_commands] )) ||
_niri__msg__action__help__toggle-keyboard-shortcuts-inhibit_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help toggle-keyboard-shortcuts-inhibit commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__toggle-overview_commands] )) ||
_niri__msg__action__help__toggle-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help toggle-overview commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__toggle-window-floating_commands] )) ||
_niri__msg__action__help__toggle-window-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help toggle-window-floating commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__toggle-window-rule-opacity_commands] )) ||
_niri__msg__action__help__toggle-window-rule-opacity_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help toggle-window-rule-opacity commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__toggle-window-urgent_commands] )) ||
_niri__msg__action__help__toggle-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help toggle-window-urgent commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__toggle-windowed-fullscreen_commands] )) ||
_niri__msg__action__help__toggle-windowed-fullscreen_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help toggle-windowed-fullscreen commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__unset-window-urgent_commands] )) ||
_niri__msg__action__help__unset-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help unset-window-urgent commands' commands "$@"
}
(( $+functions[_niri__msg__action__help__unset-workspace-name_commands] )) ||
_niri__msg__action__help__unset-workspace-name_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action help unset-workspace-name commands' commands "$@"
}
(( $+functions[_niri__msg__action__maximize-column_commands] )) ||
_niri__msg__action__maximize-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action maximize-column commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-left_commands] )) ||
_niri__msg__action__move-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-left-or-to-monitor-left_commands] )) ||
_niri__msg__action__move-column-left-or-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-left-or-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-right_commands] )) ||
_niri__msg__action__move-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-right-or-to-monitor-right_commands] )) ||
_niri__msg__action__move-column-right-or-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-right-or-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-first_commands] )) ||
_niri__msg__action__move-column-to-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-first commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-index_commands] )) ||
_niri__msg__action__move-column-to-index_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-index commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-last_commands] )) ||
_niri__msg__action__move-column-to-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-last commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-monitor_commands] )) ||
_niri__msg__action__move-column-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-monitor-down_commands] )) ||
_niri__msg__action__move-column-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-monitor-left_commands] )) ||
_niri__msg__action__move-column-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-monitor-next_commands] )) ||
_niri__msg__action__move-column-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-monitor-previous_commands] )) ||
_niri__msg__action__move-column-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-monitor-right_commands] )) ||
_niri__msg__action__move-column-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-monitor-up_commands] )) ||
_niri__msg__action__move-column-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-workspace_commands] )) ||
_niri__msg__action__move-column-to-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-workspace commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-workspace-down_commands] )) ||
_niri__msg__action__move-column-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-column-to-workspace-up_commands] )) ||
_niri__msg__action__move-column-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-column-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-floating-window_commands] )) ||
_niri__msg__action__move-floating-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-floating-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-down_commands] )) ||
_niri__msg__action__move-window-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-down-or-to-workspace-down_commands] )) ||
_niri__msg__action__move-window-down-or-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-down-or-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-floating_commands] )) ||
_niri__msg__action__move-window-to-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-floating commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-monitor_commands] )) ||
_niri__msg__action__move-window-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-monitor-down_commands] )) ||
_niri__msg__action__move-window-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-monitor-left_commands] )) ||
_niri__msg__action__move-window-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-monitor-next_commands] )) ||
_niri__msg__action__move-window-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-monitor-previous_commands] )) ||
_niri__msg__action__move-window-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-monitor-right_commands] )) ||
_niri__msg__action__move-window-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-monitor-up_commands] )) ||
_niri__msg__action__move-window-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-tiling_commands] )) ||
_niri__msg__action__move-window-to-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-tiling commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-workspace_commands] )) ||
_niri__msg__action__move-window-to-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-workspace commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-workspace-down_commands] )) ||
_niri__msg__action__move-window-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-to-workspace-up_commands] )) ||
_niri__msg__action__move-window-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-up_commands] )) ||
_niri__msg__action__move-window-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-window-up-or-to-workspace-up_commands] )) ||
_niri__msg__action__move-window-up-or-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-window-up-or-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-down_commands] )) ||
_niri__msg__action__move-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-to-index_commands] )) ||
_niri__msg__action__move-workspace-to-index_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-to-index commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-to-monitor_commands] )) ||
_niri__msg__action__move-workspace-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-to-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-to-monitor-down_commands] )) ||
_niri__msg__action__move-workspace-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-to-monitor-left_commands] )) ||
_niri__msg__action__move-workspace-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-to-monitor-next_commands] )) ||
_niri__msg__action__move-workspace-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-to-monitor-previous_commands] )) ||
_niri__msg__action__move-workspace-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-to-monitor-right_commands] )) ||
_niri__msg__action__move-workspace-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-to-monitor-up_commands] )) ||
_niri__msg__action__move-workspace-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__move-workspace-up_commands] )) ||
_niri__msg__action__move-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action move-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__action__open-overview_commands] )) ||
_niri__msg__action__open-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action open-overview commands' commands "$@"
}
(( $+functions[_niri__msg__action__power-off-monitors_commands] )) ||
_niri__msg__action__power-off-monitors_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action power-off-monitors commands' commands "$@"
}
(( $+functions[_niri__msg__action__power-on-monitors_commands] )) ||
_niri__msg__action__power-on-monitors_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action power-on-monitors commands' commands "$@"
}
(( $+functions[_niri__msg__action__quit_commands] )) ||
_niri__msg__action__quit_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action quit commands' commands "$@"
}
(( $+functions[_niri__msg__action__reset-window-height_commands] )) ||
_niri__msg__action__reset-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action reset-window-height commands' commands "$@"
}
(( $+functions[_niri__msg__action__screenshot_commands] )) ||
_niri__msg__action__screenshot_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action screenshot commands' commands "$@"
}
(( $+functions[_niri__msg__action__screenshot-screen_commands] )) ||
_niri__msg__action__screenshot-screen_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action screenshot-screen commands' commands "$@"
}
(( $+functions[_niri__msg__action__screenshot-window_commands] )) ||
_niri__msg__action__screenshot-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action screenshot-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__set-column-display_commands] )) ||
_niri__msg__action__set-column-display_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action set-column-display commands' commands "$@"
}
(( $+functions[_niri__msg__action__set-column-width_commands] )) ||
_niri__msg__action__set-column-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action set-column-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__set-dynamic-cast-monitor_commands] )) ||
_niri__msg__action__set-dynamic-cast-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action set-dynamic-cast-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__action__set-dynamic-cast-window_commands] )) ||
_niri__msg__action__set-dynamic-cast-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action set-dynamic-cast-window commands' commands "$@"
}
(( $+functions[_niri__msg__action__set-window-height_commands] )) ||
_niri__msg__action__set-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action set-window-height commands' commands "$@"
}
(( $+functions[_niri__msg__action__set-window-urgent_commands] )) ||
_niri__msg__action__set-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action set-window-urgent commands' commands "$@"
}
(( $+functions[_niri__msg__action__set-window-width_commands] )) ||
_niri__msg__action__set-window-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action set-window-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__set-workspace-name_commands] )) ||
_niri__msg__action__set-workspace-name_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action set-workspace-name commands' commands "$@"
}
(( $+functions[_niri__msg__action__show-hotkey-overlay_commands] )) ||
_niri__msg__action__show-hotkey-overlay_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action show-hotkey-overlay commands' commands "$@"
}
(( $+functions[_niri__msg__action__spawn_commands] )) ||
_niri__msg__action__spawn_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action spawn commands' commands "$@"
}
(( $+functions[_niri__msg__action__swap-window-left_commands] )) ||
_niri__msg__action__swap-window-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action swap-window-left commands' commands "$@"
}
(( $+functions[_niri__msg__action__swap-window-right_commands] )) ||
_niri__msg__action__swap-window-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action swap-window-right commands' commands "$@"
}
(( $+functions[_niri__msg__action__switch-focus-between-floating-and-tiling_commands] )) ||
_niri__msg__action__switch-focus-between-floating-and-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action switch-focus-between-floating-and-tiling commands' commands "$@"
}
(( $+functions[_niri__msg__action__switch-layout_commands] )) ||
_niri__msg__action__switch-layout_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action switch-layout commands' commands "$@"
}
(( $+functions[_niri__msg__action__switch-preset-column-width_commands] )) ||
_niri__msg__action__switch-preset-column-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action switch-preset-column-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__switch-preset-window-height_commands] )) ||
_niri__msg__action__switch-preset-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action switch-preset-window-height commands' commands "$@"
}
(( $+functions[_niri__msg__action__switch-preset-window-width_commands] )) ||
_niri__msg__action__switch-preset-window-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action switch-preset-window-width commands' commands "$@"
}
(( $+functions[_niri__msg__action__toggle-column-tabbed-display_commands] )) ||
_niri__msg__action__toggle-column-tabbed-display_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action toggle-column-tabbed-display commands' commands "$@"
}
(( $+functions[_niri__msg__action__toggle-debug-tint_commands] )) ||
_niri__msg__action__toggle-debug-tint_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action toggle-debug-tint commands' commands "$@"
}
(( $+functions[_niri__msg__action__toggle-keyboard-shortcuts-inhibit_commands] )) ||
_niri__msg__action__toggle-keyboard-shortcuts-inhibit_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action toggle-keyboard-shortcuts-inhibit commands' commands "$@"
}
(( $+functions[_niri__msg__action__toggle-overview_commands] )) ||
_niri__msg__action__toggle-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action toggle-overview commands' commands "$@"
}
(( $+functions[_niri__msg__action__toggle-window-floating_commands] )) ||
_niri__msg__action__toggle-window-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action toggle-window-floating commands' commands "$@"
}
(( $+functions[_niri__msg__action__toggle-window-rule-opacity_commands] )) ||
_niri__msg__action__toggle-window-rule-opacity_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action toggle-window-rule-opacity commands' commands "$@"
}
(( $+functions[_niri__msg__action__toggle-window-urgent_commands] )) ||
_niri__msg__action__toggle-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action toggle-window-urgent commands' commands "$@"
}
(( $+functions[_niri__msg__action__toggle-windowed-fullscreen_commands] )) ||
_niri__msg__action__toggle-windowed-fullscreen_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action toggle-windowed-fullscreen commands' commands "$@"
}
(( $+functions[_niri__msg__action__unset-window-urgent_commands] )) ||
_niri__msg__action__unset-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action unset-window-urgent commands' commands "$@"
}
(( $+functions[_niri__msg__action__unset-workspace-name_commands] )) ||
_niri__msg__action__unset-workspace-name_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg action unset-workspace-name commands' commands "$@"
}
(( $+functions[_niri__msg__event-stream_commands] )) ||
_niri__msg__event-stream_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg event-stream commands' commands "$@"
}
(( $+functions[_niri__msg__focused-output_commands] )) ||
_niri__msg__focused-output_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg focused-output commands' commands "$@"
}
(( $+functions[_niri__msg__focused-window_commands] )) ||
_niri__msg__focused-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg focused-window commands' commands "$@"
}
(( $+functions[_niri__msg__help_commands] )) ||
_niri__msg__help_commands() {
    local commands; commands=(
'outputs:List connected outputs' \
'workspaces:List workspaces' \
'windows:List open windows' \
'layers:List open layer-shell surfaces' \
'keyboard-layouts:Get the configured keyboard layouts' \
'focused-output:Print information about the focused output' \
'focused-window:Print information about the focused window' \
'pick-window:Pick a window with the mouse and print information about it' \
'pick-color:Pick a color from the screen with the mouse' \
'action:Perform an action' \
'output:Change output configuration temporarily' \
'event-stream:Start continuously receiving events from the compositor' \
'version:Print the version of the running niri instance' \
'request-error:Request an error from the running niri instance' \
'overview-state:Print the overview state' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri msg help commands' commands "$@"
}
(( $+functions[_niri__msg__help__action_commands] )) ||
_niri__msg__help__action_commands() {
    local commands; commands=(
'quit:Exit niri' \
'power-off-monitors:Power off all monitors via DPMS' \
'power-on-monitors:Power on all monitors via DPMS' \
'spawn:Spawn a command' \
'do-screen-transition:Do a screen transition' \
'screenshot:Open the screenshot UI' \
'screenshot-screen:Screenshot the focused screen' \
'screenshot-window:Screenshot the focused window' \
'toggle-keyboard-shortcuts-inhibit:Enable or disable the keyboard shortcuts inhibitor (if any) for the focused surface' \
'close-window:Close the focused window' \
'fullscreen-window:Toggle fullscreen on the focused window' \
'toggle-windowed-fullscreen:Toggle windowed (fake) fullscreen on the focused window' \
'focus-window:Focus a window by id' \
'focus-window-in-column:Focus a window in the focused column by index' \
'focus-window-previous:Focus the previously focused window' \
'focus-column-left:Focus the column to the left' \
'focus-column-right:Focus the column to the right' \
'focus-column-first:Focus the first column' \
'focus-column-last:Focus the last column' \
'focus-column-right-or-first:Focus the next column to the right, looping if at end' \
'focus-column-left-or-last:Focus the next column to the left, looping if at start' \
'focus-column:Focus a column by index' \
'focus-window-or-monitor-up:Focus the window or the monitor above' \
'focus-window-or-monitor-down:Focus the window or the monitor below' \
'focus-column-or-monitor-left:Focus the column or the monitor to the left' \
'focus-column-or-monitor-right:Focus the column or the monitor to the right' \
'focus-window-down:Focus the window below' \
'focus-window-up:Focus the window above' \
'focus-window-down-or-column-left:Focus the window below or the column to the left' \
'focus-window-down-or-column-right:Focus the window below or the column to the right' \
'focus-window-up-or-column-left:Focus the window above or the column to the left' \
'focus-window-up-or-column-right:Focus the window above or the column to the right' \
'focus-window-or-workspace-down:Focus the window or the workspace above' \
'focus-window-or-workspace-up:Focus the window or the workspace above' \
'focus-window-top:Focus the topmost window' \
'focus-window-bottom:Focus the bottommost window' \
'focus-window-down-or-top:Focus the window below or the topmost window' \
'focus-window-up-or-bottom:Focus the window above or the bottommost window' \
'move-column-left:Move the focused column to the left' \
'move-column-right:Move the focused column to the right' \
'move-column-to-first:Move the focused column to the start of the workspace' \
'move-column-to-last:Move the focused column to the end of the workspace' \
'move-column-left-or-to-monitor-left:Move the focused column to the left or to the monitor to the left' \
'move-column-right-or-to-monitor-right:Move the focused column to the right or to the monitor to the right' \
'move-column-to-index:Move the focused column to a specific index on its workspace' \
'move-window-down:Move the focused window down in a column' \
'move-window-up:Move the focused window up in a column' \
'move-window-down-or-to-workspace-down:Move the focused window down in a column or to the workspace below' \
'move-window-up-or-to-workspace-up:Move the focused window up in a column or to the workspace above' \
'consume-or-expel-window-left:Consume or expel the focused window left' \
'consume-or-expel-window-right:Consume or expel the focused window right' \
'consume-window-into-column:Consume the window to the right into the focused column' \
'expel-window-from-column:Expel the focused window from the column' \
'swap-window-right:Swap focused window with one to the right' \
'swap-window-left:Swap focused window with one to the left' \
'toggle-column-tabbed-display:Toggle the focused column between normal and tabbed display' \
'set-column-display:Set the display mode of the focused column' \
'center-column:Center the focused column on the screen' \
'center-window:Center the focused window on the screen' \
'center-visible-columns:Center all fully visible columns on the screen' \
'focus-workspace-down:Focus the workspace below' \
'focus-workspace-up:Focus the workspace above' \
'focus-workspace:Focus a workspace by reference (index or name)' \
'focus-workspace-previous:Focus the previous workspace' \
'move-window-to-workspace-down:Move the focused window to the workspace below' \
'move-window-to-workspace-up:Move the focused window to the workspace above' \
'move-window-to-workspace:Move the focused window to a workspace by reference (index or name)' \
'move-column-to-workspace-down:Move the focused column to the workspace below' \
'move-column-to-workspace-up:Move the focused column to the workspace above' \
'move-column-to-workspace:Move the focused column to a workspace by reference (index or name)' \
'move-workspace-down:Move the focused workspace down' \
'move-workspace-up:Move the focused workspace up' \
'move-workspace-to-index:Move the focused workspace to a specific index on its monitor' \
'set-workspace-name:Set the name of the focused workspace' \
'unset-workspace-name:Unset the name of the focused workspace' \
'focus-monitor-left:Focus the monitor to the left' \
'focus-monitor-right:Focus the monitor to the right' \
'focus-monitor-down:Focus the monitor below' \
'focus-monitor-up:Focus the monitor above' \
'focus-monitor-previous:Focus the previous monitor' \
'focus-monitor-next:Focus the next monitor' \
'focus-monitor:Focus a monitor by name' \
'move-window-to-monitor-left:Move the focused window to the monitor to the left' \
'move-window-to-monitor-right:Move the focused window to the monitor to the right' \
'move-window-to-monitor-down:Move the focused window to the monitor below' \
'move-window-to-monitor-up:Move the focused window to the monitor above' \
'move-window-to-monitor-previous:Move the focused window to the previous monitor' \
'move-window-to-monitor-next:Move the focused window to the next monitor' \
'move-window-to-monitor:Move the focused window to a specific monitor' \
'move-column-to-monitor-left:Move the focused column to the monitor to the left' \
'move-column-to-monitor-right:Move the focused column to the monitor to the right' \
'move-column-to-monitor-down:Move the focused column to the monitor below' \
'move-column-to-monitor-up:Move the focused column to the monitor above' \
'move-column-to-monitor-previous:Move the focused column to the previous monitor' \
'move-column-to-monitor-next:Move the focused column to the next monitor' \
'move-column-to-monitor:Move the focused column to a specific monitor' \
'set-window-width:Change the width of the focused window' \
'set-window-height:Change the height of the focused window' \
'reset-window-height:Reset the height of the focused window back to automatic' \
'switch-preset-column-width:Switch between preset column widths' \
'switch-preset-window-width:Switch between preset window widths' \
'switch-preset-window-height:Switch between preset window heights' \
'maximize-column:Toggle the maximized state of the focused column' \
'set-column-width:Change the width of the focused column' \
'expand-column-to-available-width:Expand the focused column to space not taken up by other fully visible columns' \
'switch-layout:Switch between keyboard layouts' \
'show-hotkey-overlay:Show the hotkey overlay' \
'move-workspace-to-monitor-left:Move the focused workspace to the monitor to the left' \
'move-workspace-to-monitor-right:Move the focused workspace to the monitor to the right' \
'move-workspace-to-monitor-down:Move the focused workspace to the monitor below' \
'move-workspace-to-monitor-up:Move the focused workspace to the monitor above' \
'move-workspace-to-monitor-previous:Move the focused workspace to the previous monitor' \
'move-workspace-to-monitor-next:Move the focused workspace to the next monitor' \
'move-workspace-to-monitor:Move the focused workspace to a specific monitor' \
'toggle-debug-tint:Toggle a debug tint on windows' \
'debug-toggle-opaque-regions:Toggle visualization of render element opaque regions' \
'debug-toggle-damage:Toggle visualization of output damage' \
'toggle-window-floating:Move the focused window between the floating and the tiling layout' \
'move-window-to-floating:Move the focused window to the floating layout' \
'move-window-to-tiling:Move the focused window to the tiling layout' \
'focus-floating:Switches focus to the floating layout' \
'focus-tiling:Switches focus to the tiling layout' \
'switch-focus-between-floating-and-tiling:Toggles the focus between the floating and the tiling layout' \
'move-floating-window:Move the floating window on screen' \
'toggle-window-rule-opacity:Toggle the opacity of the focused window' \
'set-dynamic-cast-window:Set the dynamic cast target to the focused window' \
'set-dynamic-cast-monitor:Set the dynamic cast target to the focused monitor' \
'clear-dynamic-cast-target:Clear the dynamic cast target, making it show nothing' \
'toggle-overview:Toggle (open/close) the Overview' \
'open-overview:Open the Overview' \
'close-overview:Close the Overview' \
'toggle-window-urgent:Toggle urgent status of a window' \
'set-window-urgent:Set urgent status of a window' \
'unset-window-urgent:Unset urgent status of a window' \
    )
    _describe -t commands 'niri msg help action commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__center-column_commands] )) ||
_niri__msg__help__action__center-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action center-column commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__center-visible-columns_commands] )) ||
_niri__msg__help__action__center-visible-columns_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action center-visible-columns commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__center-window_commands] )) ||
_niri__msg__help__action__center-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action center-window commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__clear-dynamic-cast-target_commands] )) ||
_niri__msg__help__action__clear-dynamic-cast-target_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action clear-dynamic-cast-target commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__close-overview_commands] )) ||
_niri__msg__help__action__close-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action close-overview commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__close-window_commands] )) ||
_niri__msg__help__action__close-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action close-window commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__consume-or-expel-window-left_commands] )) ||
_niri__msg__help__action__consume-or-expel-window-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action consume-or-expel-window-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__consume-or-expel-window-right_commands] )) ||
_niri__msg__help__action__consume-or-expel-window-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action consume-or-expel-window-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__consume-window-into-column_commands] )) ||
_niri__msg__help__action__consume-window-into-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action consume-window-into-column commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__debug-toggle-damage_commands] )) ||
_niri__msg__help__action__debug-toggle-damage_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action debug-toggle-damage commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__debug-toggle-opaque-regions_commands] )) ||
_niri__msg__help__action__debug-toggle-opaque-regions_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action debug-toggle-opaque-regions commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__do-screen-transition_commands] )) ||
_niri__msg__help__action__do-screen-transition_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action do-screen-transition commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__expand-column-to-available-width_commands] )) ||
_niri__msg__help__action__expand-column-to-available-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action expand-column-to-available-width commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__expel-window-from-column_commands] )) ||
_niri__msg__help__action__expel-window-from-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action expel-window-from-column commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-column_commands] )) ||
_niri__msg__help__action__focus-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-column commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-column-first_commands] )) ||
_niri__msg__help__action__focus-column-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-column-first commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-column-last_commands] )) ||
_niri__msg__help__action__focus-column-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-column-last commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-column-left_commands] )) ||
_niri__msg__help__action__focus-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-column-left-or-last_commands] )) ||
_niri__msg__help__action__focus-column-left-or-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-column-left-or-last commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-column-or-monitor-left_commands] )) ||
_niri__msg__help__action__focus-column-or-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-column-or-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-column-or-monitor-right_commands] )) ||
_niri__msg__help__action__focus-column-or-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-column-or-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-column-right_commands] )) ||
_niri__msg__help__action__focus-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-column-right-or-first_commands] )) ||
_niri__msg__help__action__focus-column-right-or-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-column-right-or-first commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-floating_commands] )) ||
_niri__msg__help__action__focus-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-floating commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-monitor_commands] )) ||
_niri__msg__help__action__focus-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-monitor-down_commands] )) ||
_niri__msg__help__action__focus-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-monitor-left_commands] )) ||
_niri__msg__help__action__focus-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-monitor-next_commands] )) ||
_niri__msg__help__action__focus-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-monitor-previous_commands] )) ||
_niri__msg__help__action__focus-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-monitor-right_commands] )) ||
_niri__msg__help__action__focus-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-monitor-up_commands] )) ||
_niri__msg__help__action__focus-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-tiling_commands] )) ||
_niri__msg__help__action__focus-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-tiling commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window_commands] )) ||
_niri__msg__help__action__focus-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-bottom_commands] )) ||
_niri__msg__help__action__focus-window-bottom_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-bottom commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-down_commands] )) ||
_niri__msg__help__action__focus-window-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-down-or-column-left_commands] )) ||
_niri__msg__help__action__focus-window-down-or-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-down-or-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-down-or-column-right_commands] )) ||
_niri__msg__help__action__focus-window-down-or-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-down-or-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-down-or-top_commands] )) ||
_niri__msg__help__action__focus-window-down-or-top_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-down-or-top commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-in-column_commands] )) ||
_niri__msg__help__action__focus-window-in-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-in-column commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-or-monitor-down_commands] )) ||
_niri__msg__help__action__focus-window-or-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-or-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-or-monitor-up_commands] )) ||
_niri__msg__help__action__focus-window-or-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-or-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-or-workspace-down_commands] )) ||
_niri__msg__help__action__focus-window-or-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-or-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-or-workspace-up_commands] )) ||
_niri__msg__help__action__focus-window-or-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-or-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-previous_commands] )) ||
_niri__msg__help__action__focus-window-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-previous commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-top_commands] )) ||
_niri__msg__help__action__focus-window-top_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-top commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-up_commands] )) ||
_niri__msg__help__action__focus-window-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-up-or-bottom_commands] )) ||
_niri__msg__help__action__focus-window-up-or-bottom_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-up-or-bottom commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-up-or-column-left_commands] )) ||
_niri__msg__help__action__focus-window-up-or-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-up-or-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-window-up-or-column-right_commands] )) ||
_niri__msg__help__action__focus-window-up-or-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-window-up-or-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-workspace_commands] )) ||
_niri__msg__help__action__focus-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-workspace commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-workspace-down_commands] )) ||
_niri__msg__help__action__focus-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-workspace-previous_commands] )) ||
_niri__msg__help__action__focus-workspace-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-workspace-previous commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__focus-workspace-up_commands] )) ||
_niri__msg__help__action__focus-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action focus-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__fullscreen-window_commands] )) ||
_niri__msg__help__action__fullscreen-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action fullscreen-window commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__maximize-column_commands] )) ||
_niri__msg__help__action__maximize-column_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action maximize-column commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-left_commands] )) ||
_niri__msg__help__action__move-column-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-left-or-to-monitor-left_commands] )) ||
_niri__msg__help__action__move-column-left-or-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-left-or-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-right_commands] )) ||
_niri__msg__help__action__move-column-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-right-or-to-monitor-right_commands] )) ||
_niri__msg__help__action__move-column-right-or-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-right-or-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-first_commands] )) ||
_niri__msg__help__action__move-column-to-first_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-first commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-index_commands] )) ||
_niri__msg__help__action__move-column-to-index_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-index commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-last_commands] )) ||
_niri__msg__help__action__move-column-to-last_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-last commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-monitor_commands] )) ||
_niri__msg__help__action__move-column-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-monitor-down_commands] )) ||
_niri__msg__help__action__move-column-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-monitor-left_commands] )) ||
_niri__msg__help__action__move-column-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-monitor-next_commands] )) ||
_niri__msg__help__action__move-column-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-monitor-previous_commands] )) ||
_niri__msg__help__action__move-column-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-monitor-right_commands] )) ||
_niri__msg__help__action__move-column-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-monitor-up_commands] )) ||
_niri__msg__help__action__move-column-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-workspace_commands] )) ||
_niri__msg__help__action__move-column-to-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-workspace commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-workspace-down_commands] )) ||
_niri__msg__help__action__move-column-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-column-to-workspace-up_commands] )) ||
_niri__msg__help__action__move-column-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-column-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-floating-window_commands] )) ||
_niri__msg__help__action__move-floating-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-floating-window commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-down_commands] )) ||
_niri__msg__help__action__move-window-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-down-or-to-workspace-down_commands] )) ||
_niri__msg__help__action__move-window-down-or-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-down-or-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-floating_commands] )) ||
_niri__msg__help__action__move-window-to-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-floating commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-monitor_commands] )) ||
_niri__msg__help__action__move-window-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-monitor-down_commands] )) ||
_niri__msg__help__action__move-window-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-monitor-left_commands] )) ||
_niri__msg__help__action__move-window-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-monitor-next_commands] )) ||
_niri__msg__help__action__move-window-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-monitor-previous_commands] )) ||
_niri__msg__help__action__move-window-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-monitor-right_commands] )) ||
_niri__msg__help__action__move-window-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-monitor-up_commands] )) ||
_niri__msg__help__action__move-window-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-tiling_commands] )) ||
_niri__msg__help__action__move-window-to-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-tiling commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-workspace_commands] )) ||
_niri__msg__help__action__move-window-to-workspace_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-workspace commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-workspace-down_commands] )) ||
_niri__msg__help__action__move-window-to-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-to-workspace-up_commands] )) ||
_niri__msg__help__action__move-window-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-up_commands] )) ||
_niri__msg__help__action__move-window-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-window-up-or-to-workspace-up_commands] )) ||
_niri__msg__help__action__move-window-up-or-to-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-window-up-or-to-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-down_commands] )) ||
_niri__msg__help__action__move-workspace-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-to-index_commands] )) ||
_niri__msg__help__action__move-workspace-to-index_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-to-index commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-to-monitor_commands] )) ||
_niri__msg__help__action__move-workspace-to-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-to-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-to-monitor-down_commands] )) ||
_niri__msg__help__action__move-workspace-to-monitor-down_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-to-monitor-down commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-to-monitor-left_commands] )) ||
_niri__msg__help__action__move-workspace-to-monitor-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-to-monitor-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-to-monitor-next_commands] )) ||
_niri__msg__help__action__move-workspace-to-monitor-next_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-to-monitor-next commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-to-monitor-previous_commands] )) ||
_niri__msg__help__action__move-workspace-to-monitor-previous_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-to-monitor-previous commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-to-monitor-right_commands] )) ||
_niri__msg__help__action__move-workspace-to-monitor-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-to-monitor-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-to-monitor-up_commands] )) ||
_niri__msg__help__action__move-workspace-to-monitor-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-to-monitor-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__move-workspace-up_commands] )) ||
_niri__msg__help__action__move-workspace-up_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action move-workspace-up commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__open-overview_commands] )) ||
_niri__msg__help__action__open-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action open-overview commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__power-off-monitors_commands] )) ||
_niri__msg__help__action__power-off-monitors_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action power-off-monitors commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__power-on-monitors_commands] )) ||
_niri__msg__help__action__power-on-monitors_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action power-on-monitors commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__quit_commands] )) ||
_niri__msg__help__action__quit_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action quit commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__reset-window-height_commands] )) ||
_niri__msg__help__action__reset-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action reset-window-height commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__screenshot_commands] )) ||
_niri__msg__help__action__screenshot_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action screenshot commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__screenshot-screen_commands] )) ||
_niri__msg__help__action__screenshot-screen_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action screenshot-screen commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__screenshot-window_commands] )) ||
_niri__msg__help__action__screenshot-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action screenshot-window commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__set-column-display_commands] )) ||
_niri__msg__help__action__set-column-display_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action set-column-display commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__set-column-width_commands] )) ||
_niri__msg__help__action__set-column-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action set-column-width commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__set-dynamic-cast-monitor_commands] )) ||
_niri__msg__help__action__set-dynamic-cast-monitor_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action set-dynamic-cast-monitor commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__set-dynamic-cast-window_commands] )) ||
_niri__msg__help__action__set-dynamic-cast-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action set-dynamic-cast-window commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__set-window-height_commands] )) ||
_niri__msg__help__action__set-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action set-window-height commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__set-window-urgent_commands] )) ||
_niri__msg__help__action__set-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action set-window-urgent commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__set-window-width_commands] )) ||
_niri__msg__help__action__set-window-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action set-window-width commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__set-workspace-name_commands] )) ||
_niri__msg__help__action__set-workspace-name_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action set-workspace-name commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__show-hotkey-overlay_commands] )) ||
_niri__msg__help__action__show-hotkey-overlay_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action show-hotkey-overlay commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__spawn_commands] )) ||
_niri__msg__help__action__spawn_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action spawn commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__swap-window-left_commands] )) ||
_niri__msg__help__action__swap-window-left_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action swap-window-left commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__swap-window-right_commands] )) ||
_niri__msg__help__action__swap-window-right_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action swap-window-right commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__switch-focus-between-floating-and-tiling_commands] )) ||
_niri__msg__help__action__switch-focus-between-floating-and-tiling_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action switch-focus-between-floating-and-tiling commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__switch-layout_commands] )) ||
_niri__msg__help__action__switch-layout_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action switch-layout commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__switch-preset-column-width_commands] )) ||
_niri__msg__help__action__switch-preset-column-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action switch-preset-column-width commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__switch-preset-window-height_commands] )) ||
_niri__msg__help__action__switch-preset-window-height_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action switch-preset-window-height commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__switch-preset-window-width_commands] )) ||
_niri__msg__help__action__switch-preset-window-width_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action switch-preset-window-width commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__toggle-column-tabbed-display_commands] )) ||
_niri__msg__help__action__toggle-column-tabbed-display_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action toggle-column-tabbed-display commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__toggle-debug-tint_commands] )) ||
_niri__msg__help__action__toggle-debug-tint_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action toggle-debug-tint commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__toggle-keyboard-shortcuts-inhibit_commands] )) ||
_niri__msg__help__action__toggle-keyboard-shortcuts-inhibit_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action toggle-keyboard-shortcuts-inhibit commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__toggle-overview_commands] )) ||
_niri__msg__help__action__toggle-overview_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action toggle-overview commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__toggle-window-floating_commands] )) ||
_niri__msg__help__action__toggle-window-floating_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action toggle-window-floating commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__toggle-window-rule-opacity_commands] )) ||
_niri__msg__help__action__toggle-window-rule-opacity_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action toggle-window-rule-opacity commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__toggle-window-urgent_commands] )) ||
_niri__msg__help__action__toggle-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action toggle-window-urgent commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__toggle-windowed-fullscreen_commands] )) ||
_niri__msg__help__action__toggle-windowed-fullscreen_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action toggle-windowed-fullscreen commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__unset-window-urgent_commands] )) ||
_niri__msg__help__action__unset-window-urgent_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action unset-window-urgent commands' commands "$@"
}
(( $+functions[_niri__msg__help__action__unset-workspace-name_commands] )) ||
_niri__msg__help__action__unset-workspace-name_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help action unset-workspace-name commands' commands "$@"
}
(( $+functions[_niri__msg__help__event-stream_commands] )) ||
_niri__msg__help__event-stream_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help event-stream commands' commands "$@"
}
(( $+functions[_niri__msg__help__focused-output_commands] )) ||
_niri__msg__help__focused-output_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help focused-output commands' commands "$@"
}
(( $+functions[_niri__msg__help__focused-window_commands] )) ||
_niri__msg__help__focused-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help focused-window commands' commands "$@"
}
(( $+functions[_niri__msg__help__help_commands] )) ||
_niri__msg__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help help commands' commands "$@"
}
(( $+functions[_niri__msg__help__keyboard-layouts_commands] )) ||
_niri__msg__help__keyboard-layouts_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help keyboard-layouts commands' commands "$@"
}
(( $+functions[_niri__msg__help__layers_commands] )) ||
_niri__msg__help__layers_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help layers commands' commands "$@"
}
(( $+functions[_niri__msg__help__output_commands] )) ||
_niri__msg__help__output_commands() {
    local commands; commands=(
'off:Turn off the output' \
'on:Turn on the output' \
'mode:Set the output mode' \
'scale:Set the output scale' \
'transform:Set the output transform' \
'position:Set the output position' \
'vrr:Set the variable refresh rate mode' \
    )
    _describe -t commands 'niri msg help output commands' commands "$@"
}
(( $+functions[_niri__msg__help__output__mode_commands] )) ||
_niri__msg__help__output__mode_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help output mode commands' commands "$@"
}
(( $+functions[_niri__msg__help__output__off_commands] )) ||
_niri__msg__help__output__off_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help output off commands' commands "$@"
}
(( $+functions[_niri__msg__help__output__on_commands] )) ||
_niri__msg__help__output__on_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help output on commands' commands "$@"
}
(( $+functions[_niri__msg__help__output__position_commands] )) ||
_niri__msg__help__output__position_commands() {
    local commands; commands=(
'auto:Position the output automatically' \
'set:Set a specific position' \
    )
    _describe -t commands 'niri msg help output position commands' commands "$@"
}
(( $+functions[_niri__msg__help__output__position__auto_commands] )) ||
_niri__msg__help__output__position__auto_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help output position auto commands' commands "$@"
}
(( $+functions[_niri__msg__help__output__position__set_commands] )) ||
_niri__msg__help__output__position__set_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help output position set commands' commands "$@"
}
(( $+functions[_niri__msg__help__output__scale_commands] )) ||
_niri__msg__help__output__scale_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help output scale commands' commands "$@"
}
(( $+functions[_niri__msg__help__output__transform_commands] )) ||
_niri__msg__help__output__transform_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help output transform commands' commands "$@"
}
(( $+functions[_niri__msg__help__output__vrr_commands] )) ||
_niri__msg__help__output__vrr_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help output vrr commands' commands "$@"
}
(( $+functions[_niri__msg__help__outputs_commands] )) ||
_niri__msg__help__outputs_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help outputs commands' commands "$@"
}
(( $+functions[_niri__msg__help__overview-state_commands] )) ||
_niri__msg__help__overview-state_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help overview-state commands' commands "$@"
}
(( $+functions[_niri__msg__help__pick-color_commands] )) ||
_niri__msg__help__pick-color_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help pick-color commands' commands "$@"
}
(( $+functions[_niri__msg__help__pick-window_commands] )) ||
_niri__msg__help__pick-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help pick-window commands' commands "$@"
}
(( $+functions[_niri__msg__help__request-error_commands] )) ||
_niri__msg__help__request-error_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help request-error commands' commands "$@"
}
(( $+functions[_niri__msg__help__version_commands] )) ||
_niri__msg__help__version_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help version commands' commands "$@"
}
(( $+functions[_niri__msg__help__windows_commands] )) ||
_niri__msg__help__windows_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help windows commands' commands "$@"
}
(( $+functions[_niri__msg__help__workspaces_commands] )) ||
_niri__msg__help__workspaces_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg help workspaces commands' commands "$@"
}
(( $+functions[_niri__msg__keyboard-layouts_commands] )) ||
_niri__msg__keyboard-layouts_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg keyboard-layouts commands' commands "$@"
}
(( $+functions[_niri__msg__layers_commands] )) ||
_niri__msg__layers_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg layers commands' commands "$@"
}
(( $+functions[_niri__msg__output_commands] )) ||
_niri__msg__output_commands() {
    local commands; commands=(
'off:Turn off the output' \
'on:Turn on the output' \
'mode:Set the output mode' \
'scale:Set the output scale' \
'transform:Set the output transform' \
'position:Set the output position' \
'vrr:Set the variable refresh rate mode' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri msg output commands' commands "$@"
}
(( $+functions[_niri__msg__output__help_commands] )) ||
_niri__msg__output__help_commands() {
    local commands; commands=(
'off:Turn off the output' \
'on:Turn on the output' \
'mode:Set the output mode' \
'scale:Set the output scale' \
'transform:Set the output transform' \
'position:Set the output position' \
'vrr:Set the variable refresh rate mode' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri msg output help commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__help_commands] )) ||
_niri__msg__output__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output help help commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__mode_commands] )) ||
_niri__msg__output__help__mode_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output help mode commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__off_commands] )) ||
_niri__msg__output__help__off_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output help off commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__on_commands] )) ||
_niri__msg__output__help__on_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output help on commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__position_commands] )) ||
_niri__msg__output__help__position_commands() {
    local commands; commands=(
'auto:Position the output automatically' \
'set:Set a specific position' \
    )
    _describe -t commands 'niri msg output help position commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__position__auto_commands] )) ||
_niri__msg__output__help__position__auto_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output help position auto commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__position__set_commands] )) ||
_niri__msg__output__help__position__set_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output help position set commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__scale_commands] )) ||
_niri__msg__output__help__scale_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output help scale commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__transform_commands] )) ||
_niri__msg__output__help__transform_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output help transform commands' commands "$@"
}
(( $+functions[_niri__msg__output__help__vrr_commands] )) ||
_niri__msg__output__help__vrr_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output help vrr commands' commands "$@"
}
(( $+functions[_niri__msg__output__mode_commands] )) ||
_niri__msg__output__mode_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output mode commands' commands "$@"
}
(( $+functions[_niri__msg__output__off_commands] )) ||
_niri__msg__output__off_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output off commands' commands "$@"
}
(( $+functions[_niri__msg__output__on_commands] )) ||
_niri__msg__output__on_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output on commands' commands "$@"
}
(( $+functions[_niri__msg__output__position_commands] )) ||
_niri__msg__output__position_commands() {
    local commands; commands=(
'auto:Position the output automatically' \
'set:Set a specific position' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri msg output position commands' commands "$@"
}
(( $+functions[_niri__msg__output__position__auto_commands] )) ||
_niri__msg__output__position__auto_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output position auto commands' commands "$@"
}
(( $+functions[_niri__msg__output__position__help_commands] )) ||
_niri__msg__output__position__help_commands() {
    local commands; commands=(
'auto:Position the output automatically' \
'set:Set a specific position' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'niri msg output position help commands' commands "$@"
}
(( $+functions[_niri__msg__output__position__help__auto_commands] )) ||
_niri__msg__output__position__help__auto_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output position help auto commands' commands "$@"
}
(( $+functions[_niri__msg__output__position__help__help_commands] )) ||
_niri__msg__output__position__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output position help help commands' commands "$@"
}
(( $+functions[_niri__msg__output__position__help__set_commands] )) ||
_niri__msg__output__position__help__set_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output position help set commands' commands "$@"
}
(( $+functions[_niri__msg__output__position__set_commands] )) ||
_niri__msg__output__position__set_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output position set commands' commands "$@"
}
(( $+functions[_niri__msg__output__scale_commands] )) ||
_niri__msg__output__scale_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output scale commands' commands "$@"
}
(( $+functions[_niri__msg__output__transform_commands] )) ||
_niri__msg__output__transform_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output transform commands' commands "$@"
}
(( $+functions[_niri__msg__output__vrr_commands] )) ||
_niri__msg__output__vrr_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg output vrr commands' commands "$@"
}
(( $+functions[_niri__msg__outputs_commands] )) ||
_niri__msg__outputs_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg outputs commands' commands "$@"
}
(( $+functions[_niri__msg__overview-state_commands] )) ||
_niri__msg__overview-state_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg overview-state commands' commands "$@"
}
(( $+functions[_niri__msg__pick-color_commands] )) ||
_niri__msg__pick-color_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg pick-color commands' commands "$@"
}
(( $+functions[_niri__msg__pick-window_commands] )) ||
_niri__msg__pick-window_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg pick-window commands' commands "$@"
}
(( $+functions[_niri__msg__request-error_commands] )) ||
_niri__msg__request-error_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg request-error commands' commands "$@"
}
(( $+functions[_niri__msg__version_commands] )) ||
_niri__msg__version_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg version commands' commands "$@"
}
(( $+functions[_niri__msg__windows_commands] )) ||
_niri__msg__windows_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg windows commands' commands "$@"
}
(( $+functions[_niri__msg__workspaces_commands] )) ||
_niri__msg__workspaces_commands() {
    local commands; commands=()
    _describe -t commands 'niri msg workspaces commands' commands "$@"
}
(( $+functions[_niri__panic_commands] )) ||
_niri__panic_commands() {
    local commands; commands=()
    _describe -t commands 'niri panic commands' commands "$@"
}
(( $+functions[_niri__validate_commands] )) ||
_niri__validate_commands() {
    local commands; commands=()
    _describe -t commands 'niri validate commands' commands "$@"
}

if [ "$funcstack[1]" = "_niri" ]; then
    _niri "$@"
else
    compdef _niri niri
fi
