function cat --wraps='bat -p' --description 'alias cat=bat'
    if type -f bat &>/dev/null
        bat -p $argv
    else
        cat $argv
    end
end
