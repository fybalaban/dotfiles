function gitc --wraps='git commit -S -m ' --description 'alias gitc git commit -S -m '
  git commit -S -m  $argv; 
end
