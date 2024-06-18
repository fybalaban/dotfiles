if status is-interactive
    if test "$TERM" != "linux"
        $HOME/scripts/fetchpy5
	fish_config theme choose "Rosé Pine Moon"
    end
end

if status is-login
    if test (tty) = /dev/tty1
        exec Hyprland 
    end
end


# pnpm
set -gx PNPM_HOME "/home/yigid/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
