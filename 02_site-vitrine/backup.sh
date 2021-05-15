#!/bin/bash

# this script is used to backup eazytraining wordpress database
docker exec site-vitrine-db /usr/bin/mysqldump -u root --password=password eazytraining > "/home/centos/wordpress/backup-db/eazytraining_$(date +"%Y_%m_%d_%I_%M_%p").sql"

# remove older backup
find /home/centos/wordpress/backup-db/eazytraining_* -mtime +1 -exec rm {} \;