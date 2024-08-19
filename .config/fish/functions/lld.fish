function lld --wraps='eza -A --color=always --git --long --icons=always' --description 'List of directory content using eza, with file size, permissions and user'
    eza -A --color=always --git --long --icons=always $argv
end
