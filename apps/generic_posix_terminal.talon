app: windows_terminal
app: apple_terminal
app: iterm2
-
cancel: key(ctrl-c)
directory create: "mkdir "
directory create <user.text>: "mkdir {text}"
directory current: "pwd\n"
directory print: "pwd\n"
directory parent: "cd ..\n"
directory change home: "cd ~\n"
directory change parent: "cd ..\n"
directory change: "cd "
directory change <user.text>: "cd {text}"
directory list: "ls\n"
directory detail: "ls -al\n"
directory change talon: "cd /mnt/c/Users/mathias/AppData/Roaming/talon/user\n"
directory remove: "rm "
directory wipe: "rm -rf "
directory edit talon: "nvim /mnt/c/Users/mathias/AppData/Roaming/talon/user\n"

file edit [<user.text>]:
  insert("nvim ")
  insert(text or "")
file edit talon: "nvim /mnt/c/Users/mathias/AppData/Roaming/talon/user\n"
file remove [<user.text>]:
  insert("rm ")
  insert(text or "")
file wipe [<user.text>]:
  insert("rm -rf ")
  insert(text or "")
file rename [<user.text>]:
  insert("mv ")
  insert(text or "")

rerun <user.text>:
  key(ctrl-r)
  insert(text)
rerun:
  key(ctrl-r)

run code: "code .\n"
run super [<user.text>]:
  insert("sudo ")
  insert(text or "")
run docker: "docker "
run docker compose: "docker-compose "
run apt: "apt "
run ssh: "ssh "
run grep: "grep "
run cargo [<user.text>]:
  insert("cargo ")
  insert(text or "")
run vim: "nvim .\n"

apt install: "apt install "
apt search: "apt search "

permissions change: "chmod "
