function lsa --wraps='ls -l -a --color=always' --description 'alias lsa ls -l -a --color=always'
  ls -l -a --color=always $argv; 
end
