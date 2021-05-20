# Workaround for closing help screen closes window bug: https://bugs.launchpad.net/byobu/+bug/1813986
# Generated using:
#   grep new-window /usr/share/byobu/keybindings/f-keys.tmux | grep ' -k' | sed -e 's/ -k/ -ak/' >> ~/.byobu/keybindings.tmux
bind-key -n F1 new-window -ak -n config byobu-config
bind-key -n S-F1 new-window -ak -n help "sh -c '$BYOBU_PAGER $BYOBU_PREFIX/share/doc/byobu/help.tmux.txt'"
bind-key -n S-F5 new-window -ak "$BYOBU_PREFIX/lib/byobu/include/cycle-status" \; source $BYOBU_PREFIX/share/byobu/profiles/tmuxrc
bind-key -n M-S-F8 new-window -ak "byobu-layout restore; clear; $SHELL"
bind-key -n F9 new-window -ak -n config byobu-config
