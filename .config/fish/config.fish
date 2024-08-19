if status is-interactive
    if test "$TERM" != "linux"
	fish_config theme choose "fish default"
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

# zoxide
zoxide init --cmd cd fish | source
# zoxide end
