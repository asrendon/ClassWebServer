#!/bin/sh


# create a zip archive


zip -r ~/backup/"Tongka-backed-up-at-$(date +"%Y-%m-%d-%H-%M-%S").zip" /var/www/html
# command -r name-of-your-new-zip-file.zip the-folder-you-want-to-zip


# push the files to S3


/usr/local/bin/aws s3 cp --recursive ~/backup s3://it202-backups
# tongka-backup is your bucket name


# delete the contents of the other directories as we don't need to store them once backed up
rm -rf ~/backup/*
