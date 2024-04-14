function gsc --argument msg

git add .
git status
git commit -S -m $msg
git push
end
