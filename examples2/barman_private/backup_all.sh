#!/bin/bash
log_backup_file=backup_all$(date +%Y%m%d)_$(date +%H%M%S).log
/usr/local/bin/barman backup all >>/var/log/barman/$log_backup_file
