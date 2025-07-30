function la --wraps='eza --long --header -a --icons --git --group-directories-first' --description 'alias la=eza --long --header -a --icons --git --group-directories-first --hyperlink $argv'
    if type -f eza &>/dev/null
        eza --long --header -a --icons --git --group-directories-first --hyperlink $argv
    else
        missing_package eza
    end
end
