function lta --wraps='eza --long --header -a --icons --tree --git --group-directories-first' --description 'alias lta=eza --long --header -a --icons --tree --git --group-directories-first'
    if type -f eza &>/dev/null
        eza --long --header -a --icons --tree --git --group-directories-first --hyperlink $argv
    else
        missing_package eza
    end
end
