# git
if command -qs git
    abbr g git
end

# hx
if command -qs hx
    abbr v hx
end

# chezmoi
if command -qs chezmoi
    abbr ca 'chezmoi apply'
    abbr cu 'chezmoi update'
    abbr ce 'chezmoi edit'
    abbr cs 'chezmoi status'
    abbr csp 'cd $(chezmoi source-path)'
end

# basic abbreviations
abbr cpr 'cp -rf'
abbr rmr 'rm -rf'
abbr md 'mkdir -p'
abbr rd rmdir

if command -qs lazygit
    abbr lg lazygit
end
