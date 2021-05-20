bind-key -n F1 new-window -ak -n config byobu-config
bind-key -n S-F1 new-window -ak -n help "sh -c '$BYOBU_PAGER $BYOBU_PREFIX/share/doc/byobu/help.tmux.txt'"
bind-key -n S-F5 new-window -ak "$BYOBU_PREFIX/lib/byobu/include/cycle-status" \; source $BYOBU_PREFIX/share/byobu/profiles/tmuxrc
bind-key -n M-S-F8 new-window -ak "byobu-layout restore; clear; $SHELL"
bind-key -n F9 new-window -ak -n config byobu-config
