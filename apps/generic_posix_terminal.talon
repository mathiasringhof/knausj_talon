app: windows_terminal
app: mintty
app: apple_terminal
app: iterm2
-
tag(): user.tmux
 
cancel: key(ctrl-c)
dub tab:
  key(tab)
  key(tab)
clear last: key(ctrl-w)

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
directory remove: "rm "
directory wipe: "rm -rf "

file show|display [<user.text>]:
  insert("cat ")
  insert(text or "")
file edit [<user.text>]:
  insert("code ")
  insert(text or "")
file vim [<user.text>]:
    insert("vi ")
    insert(text or "")
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
run switch root: "su - root\n"
run docker: "docker "
run docker compose: "docker-compose "
run ssh [<user.text>]:
  insert("ssh ")
  insert(text or "")
run grep: "grep "
run cargo [<user.text>]:
  insert("cargo ")
  insert(text or "")
run vim: "nvim .\n"

run apt [<user.text>]:
  insert("apt ")
  insert(text or "")
apt install: "apt install "
apt list: "apt list "
apt remove: "apt remove "
apt search: "apt search "
apt all to remove: "apt autoremove "

permissions change: "chmod "

zfs create: "zfs create "
zfs list: "zfs list "
zpool create: "zpool create "
zpool set: "zpool set "


system control: "systemctl "
system control enable: "systemctl enable "
system control start: "systemctl start "
system control stop: "systemctl stop "
system control restart: "systemctl restart "
system control status: "systemctl status "
system control [<user.text>]:
  insert("systemctl ")
  insert(text or "")

system log tale: "journalctl -xef\n"
system log show: "journalctl -xe\n"