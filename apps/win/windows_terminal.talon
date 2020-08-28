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

cancel: key(ctrl-c)
directory current: "pwd\n"
directory print: "pwd\n"
directory parent: "cd ..\n"
directory change: "cd "
directory change <user.text>: "cd {text}"
directory list: "ls\n"
directory detail: "ls -al\n"
directory talon: "cd /mnt/c/Users/mathias/AppData/Roaming/talon/user\n"

file edit: "code "
file edit <user.text>: "code {text}"
file edit talon: "code /mnt/c/Users/mathias/AppData/Roaming/talon/user\n"

rerun <user.text>:
  key(ctrl-r)
  insert(text)
rerun:
  key(ctrl-r)

run code: "code .\n"
run super: "sudo "
run docker: "docker "
run docker compose: "docker-compose "
run apt: "apt "
run ssh: "ssh "
run grep: "grep "