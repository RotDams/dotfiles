
function __complete_symfony
    set -lx COMP_LINE (string join ' ' (commandline -o))
    test (commandline -ct) = ""
    and set COMP_LINE "$COMP_LINE "
    /usr/bin/symfony
end
complete -c symfony -a "(__complete_symfony)"

