if command -qs eza
    alias ls 'eza --icons --sort=type'
    alias l. 'eza --icons --sort=type -d .*'
    alias l 'eza -l --icons --git --sort=type --header --no-time --total-size --smart-group'
    alias ll 'eza -l --icons --git --sort=type --header --no-time --total-size --smart-group'
    alias la 'eza -lag --icons --git --sort=type --header --no-time --total-size'
end

if command -qs bat
    alias cat "bat -pp"
end

if command -qs batman
    alias man "batman"
end

if command -qs prettybat
    alias pb "prettybat"
end

if command -qs ug
    alias grep ug
    alias egrep 'ugrep -E'
    alias fgrep 'ug -F'
    alias xzgrep 'ug -z'
    alias xzegrep 'ug -zE'
    alias xzfgrep 'ug -zF'
end

if command -qs rsync
    alias rcp 'rsync -zvhP'
end

alias q exit
alias e exit
alias c clear
