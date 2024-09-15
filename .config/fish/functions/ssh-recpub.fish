function ssh-recpub --description 'Generates a public key from a private key'
    if test (count $argv) -ne 1
        echo "Usage: ssh-recpub <private_key_file>"
        return 1
    end

    set key_name $argv[1]

    if test -f $key_name
        ssh-keygen -f $key_name -y >$key_name.pub
        echo "Public key saved as $key_name.pub"
    else
        echo "Private key file $key_name not found."
        return 1
    end
end
