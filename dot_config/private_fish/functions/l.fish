function l --wraps='eza --long --header --icons --git --group-directories-first' --description 'alias l=eza --long --header --icons --git --group-directories-first --hyperlink $argv'
    if type -f eza &>/dev/null
        eza --long --header --icons --git --group-directories-first --hyperlink $argv
    else
        missing_package eza
    end
end
