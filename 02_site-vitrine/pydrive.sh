#!/bin/bash

cd /home/centos/wordpress/backup-db
file_name=$(ls -Art | tail -n 1)
cp $file_name /home/centos/pydrive/
cd /home/centos/pydrive/
tar -czvf $file_name wordpress.sql.tar.gz
python3 backup.py