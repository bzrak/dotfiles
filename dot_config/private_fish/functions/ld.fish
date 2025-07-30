function ld --wraps='eza --long --header --icons -D --git' --description 'alias ld=eza --long --header --icons -D --git'
    if type -f eza &>/dev/null
        eza --long --header --icons -D --git --hyperlink $argv
    else
        missing_package eza
    end
end
