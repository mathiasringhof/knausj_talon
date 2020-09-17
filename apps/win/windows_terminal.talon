# Windows Terminal with WSL2
app: windows_terminal
-
tag(): user.tabs
tag(): user.tmux

action(app.tab_open):
    key(ctrl-shift-t)

action(app.tab_previous):
    key(ctrl-shift-tab)

action(app.tab_next):
    key(ctrl-tab)
