if status is-interactive
    if test "$TERM" != "linux"
        cat ~/.cache/wal/sequences &
        $HOME/scripts/fetchpy5
    end
end

if status is-login
    if test (tty) = /dev/tty1
        exec Hyprland 
    end
end

