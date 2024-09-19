if type -q eza
    alias ls 'eza --icons --sort=type'
    alias l. 'eza --icons --sort=type -d .*'
    alias l 'eza -l --icons --git --sort=type --header --no-time --total-size --smart-group'
    alias ll 'eza -l --icons --git --sort=type --header --no-time --total-size --smart-group'
    alias la 'eza -lag --icons --git --sort=type --header --no-time --total-size'
end

if type -q bat
    alias cat "bat -pp"
end

if type -q flatpak
    if flatpak list --columns application | grep visualstudio >/dev/null
        alias code 'flatpak run (flatpak list --columns application | grep "visualstudio")'
    end

    if flatpak list --columns application | grep "dev.zed.Zed" >/dev/null
        alias zed 'flatpak run dev.zed.Zed'
    end
end

if type -q ug
    alias grep ug
    alias egrep 'ugrep -E'
    alias fgrep 'ug -F'
    alias xzgrep 'ug -z'
    alias xzegrep 'ug -zE'
    alias xzfgrep 'ug -zF'
end

if type -q rg
    alias rg 'rg --hidden --line-number --sort=path'
end

if type -q rsync
    alias rcp 'rsync -zvhP'
end

alias q exit
alias e exit
