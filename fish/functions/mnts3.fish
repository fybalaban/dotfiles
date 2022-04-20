function mnts3 --wraps='rclone mount 01_AmazonS3: /home/ferit/mounts/01_AmazonS3' --description 'Mounts S3 to default mountpoint'
    rclone mount 01_AmazonS3: $HOME/mounts/01_AmazonS3 $argv
end
