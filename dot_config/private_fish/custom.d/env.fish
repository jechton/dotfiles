# Disable fish greeting
set -g fish_greeting

if type -q nvim
    set -gx EDITOR nvim
    set -gx VISUAL nvim
end

# Load custom functions
if test -d $__fish_config_dir/custom_functions.d
    set -gp fish_function_path $__fish_config_dir/custom_functions.d
end

# Load GPG keys
set GPG_TTY $(tty)

# Colorize man pages with bat
if type -q bat
    set MANPAGER "sh -c 'col -bx | bat -l man -p'"
end

# Don't update brew, bluefin/bazzite already do
set -Ux HOMEBREW_NO_AUTO_UPDATE 1