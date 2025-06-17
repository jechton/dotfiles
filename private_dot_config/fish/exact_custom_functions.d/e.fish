function e --description "Open directory with file manager (default: current dir)"
    if set -q argv[1]
        xdg-open $argv[1] >/dev/null 2>&1 & disown
    else
        xdg-open ./ >/dev/null 2>&1 & disown
    end
end
