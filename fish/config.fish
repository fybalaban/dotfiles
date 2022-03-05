if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$HOME/.cargo/bin:$PATH"
fm6000 -f $HOME/.config/various/tux.txt
echo ""
