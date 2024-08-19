function ls --wraps='eza --color=always --git --icons=always' --description 'Short list of directory content using eza'
    eza --color=always --git --icons=always $argv

end
