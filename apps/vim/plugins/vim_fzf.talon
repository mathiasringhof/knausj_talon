tag: user.vim
-

rizzle: user.vim_normal_mode_exterm(":Rg\n")
rizzle <user.text>:
    user.vim_normal_mode_exterm(":Rg\n")
    insert("{text}")

fuzzy buffer commits: user.vim_normal_mode_exterm(":BCommit\n")
fuzzy buffer lines: user.vim_normal_mode_exterm(":BLines\n")
fuzzy buffer tags: user.vim_normal_mode_exterm(":BTags\n")

bizzle: user.vim_normal_mode_exterm(":Buffers\n")
bizzle <user.text>:
    user.vim_normal_mode_exterm(":Buffers\n")
    insert("{text}")

fuzzy code search: user.vim_normal_mode_exterm(":Ag\n")
fuzzy colors: user.vim_normal_mode_exterm(":Colors\n")
fuzzy command history: user.vim_normal_mode_exterm(":History:\n")
fuzzy commands: user.vim_normal_mode_exterm(":Commands\n")
fuzzy commits: user.vim_normal_mode_exterm(":Commit\n")
fuzzy file types: user.vim_normal_mode_exterm(":Filetypes\n")

fizzle <user.text>:
    user.vim_normal_mode_exterm(":Files\n")
    insert("{text}")
fizzle: user.vim_normal_mode_exterm(":Files\n")

fuzzy git files: user.vim_normal_mode_exterm(":GFiles\n")
fuzzy git status: user.vim_normal_mode_exterm(":GFiles?\n")
fuzzy help tags: user.vim_normal_mode_exterm(":Helptags\n")
fuzzy history: user.vim_normal_mode_exterm(":History\n")
fuzzy lines: user.vim_normal_mode_exterm(":Lines\n")
fuzzy locate: user.vim_normal_mode_exterm(":Locate ")
fuzzy maps: user.vim_normal_mode_exterm(":Maps\n")
fuzzy marks: user.vim_normal_mode_exterm(":Marks\n")
fuzzy search history: user.vim_normal_mode_exterm(":History/\n")
fuzzy snippets: user.vim_normal_mode_exterm(":Snippets\n")
fuzzy tags: user.vim_normal_mode_exterm(":Tags\n")
fuzzy windows: user.vim_normal_mode_exterm(":Windows\n")
