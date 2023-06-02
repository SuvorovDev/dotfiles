. ~/.config/fish/aliases.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
    neofetch
end

#lfcd
function lfcd
    set tmp (mktemp)
    # `command` is needed in case `lfcd` is aliased to `lf`
    command lf -last-dir-path=$tmp $argv
    if test -f "$tmp"
        set dir (cat $tmp)
        rm -f $tmp
        if test -d "$dir"
            if test "$dir" != (pwd)
                cd $dir
            end
        end
    end
end

bind \co 'set old_tty (stty -g); stty sane; lfcd; stty $old_tty; commandline -f repaint'


