#!/bin/bash
/usr/bin/ssh -o ConnectTimeout=4 -o PubkeyAuthentication=yes -o PasswordAuthentication=no user@192.168.0.26 '/usr/bin/sudo docker stop postgresql-docker_db_1'
barman recover --remote-ssh-command "ssh user@192.168.0.26" ubuntuserver-pg latest /home/user/github/postgresql-docker/DATA/test
/usr/bin/ssh -o ConnectTimeout=4 -o PubkeyAuthentication=yes -o PasswordAuthentication=no user@192.168.0.26 '/usr/bin/sudo docker start postgresql-docker_db_1'

