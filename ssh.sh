#!/bin/bash
# scp ssh

scp  -i  /path/to/my.key  user@140.112.1.1:/path/to/file   /path/to/destination/file
scp  -i  /path/to/my.key  /path/to/destination/file        user@140.112.1.1:/path/to/file 

scp  -i  /path/to/my.key  -r  user@140.112.1.1:/path/to/folder   /path/to/folder
scp  -i  /path/to/my.key  -r  /path/to/folder       user@140.112.1.1:/path/to/folder

ssh  -i  /path/to/my.key  user@140.112.1.1    'ls ; cat /etc/passwd ; bash /path/to/restart_service.sh '