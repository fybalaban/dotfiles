function ll --wraps='eza -A --color=always --git --long --icons=always --no-user --no-permissions --no-filesize' --description 'List of directory content using eza, with less details'
    eza -A --color=always --git --long --icons=always --no-user --no-permissions --no-filesize $argv
end
