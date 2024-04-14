function cdd -d "Change directory to a specific location based on input"
    set input $argv[1]

    if string match -q -r '^[0-9]{3}\.[0-9]{2}$' $input
        cd $HOME/shoka/*/*/"$input"*/

    else if string match -q -r '^[0-9]{3}$' $input
        cd $HOME/shoka/*/"$input"*

    else if string match -q -r '^[0-9]{2}$' $input
        set wd (basename $PWD)
        set XXX (string sub -l 3 $wd)
        cd $HOME/shoka/*/*/"$XXX.$input"*

    else
        echo "No matches found :("
    end
end
