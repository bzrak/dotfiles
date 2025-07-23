# ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
# ┃                    Keybinds                                 ┃
# ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

bind \cn down-or-search
# Next selection in History, Tab Completion, Insert (VI)
bind -M insert \cn down-or-search
# Add prev selection for history in Normal (VI)
bind \cp up-or-search
# Prev selection in History, Tab Completion
# bind -M insert \cp up-or-search              # Default

# Accept suggestion (Default: Ctrl-f)
bind -M insert ctrl-y accept-autosuggestion

# ======= Plugins =======
## ======= Fzf =======
fzf_configure_bindings --variables=\e\cv --history=\e\ch

## ======= Sudope =======
# Add sudope to Insert mode
bind -M insert alt-escape sudope
