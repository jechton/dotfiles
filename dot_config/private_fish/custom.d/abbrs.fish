# git
if type -q git
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
if type -q nvim
    abbr vi nvim
    abbr vim nvim
end

# chezmoi
if type -q chezmoi
    abbr c chezmoi
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

if type -q bat
    abbr -a --position anywhere --set-cursor -- -h "-h 2>&1 | bat --plain --language=help"
    abbr -a --position anywhere --set-cursor -- --help "--help 2>&1 | bat --plain --language=help"
end
