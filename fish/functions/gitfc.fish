function gitfc --wraps='git add * && git status && git commit -m  && git push' --wraps='git add * .gitignore && git status && git commit -m  && git push' --description 'Adds all files to staging, prints status, commits with message and pushes to origin'
    git add * .gitignore && git status && git commit -m $argv
    git push
end
