function sumhere
    find . -type f -print0 | sort -z | xargs -0 md5sum | awk '{print $1}' | md5sum
end
