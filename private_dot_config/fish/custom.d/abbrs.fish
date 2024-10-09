# git
if command -qs git
    abbr g git
    abbr ga 'git add .'
    abbr gaa 'git add --all'
    abbr gc 'git commit'
    abbr gcm 'git commit -m'
    abbr gs 'git status'
    abbr gss 'git status --short'
    abbr gp 'git push'
    abbr gpl 'git pull'
    abbr gl 'git log'
    abbr gd 'git diff'
end

# nvim
if command -qs nvim
    abbr vi nvim
    abbr vim nvim
end

# chezmoi
if command -qs chezmoi
    abbr ca 'chezmoi apply'
    abbr cu 'chezmoi update'
    abbr ce 'chezmoi edit'
    abbr cs 'chezmoi status'
    abbr cc 'cd $(chezmoi source-path)'
end

# basic abbreviations
abbr cpr 'cp -rf'
abbr rmr 'rm -rf'
abbr md 'mkdir -p'
abbr rd rmdir

if command -qs lazygit
    abbr lg lazygit
end

for cmd in bat batcat
    if command -qs $cmd
        abbr -a --position anywhere --set-cursor -- --help "--help | $cmd --plain --language=help"
    end
end
