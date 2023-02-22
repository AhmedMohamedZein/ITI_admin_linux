#!/bin/bash


# PART 1
########################################################################

touch /tmp/list.log #crating the log file in the tmp folder if it does not exists

while [ true ]
    do
        ls /var/log/ >> /usr/local/bin/list.log  #every 5 seconds add the ls of /var/log into the /tmp/list.log file
        sleep 5
done


# PART 2
#########################################################################

mv /tmp/list.log /usr/local/bin/
chmod u+x /usr/local/bin/list.log #give execution preiv.


# PART 3
#########################################################################

sudo touch /etc/systemd/system/day4_listlog.service

[Unit]
Description=hello, my first background servies

[Service]
User=root
WorkingDirectory=/home/ahmedzein/Desktop/admin_iti/day4/
ExecStart=/home/ahmedzein/Desktop/admin_iti/day4/day4.sh
Restart=always
KillMode=process

[Install]
WantedBy=multi-user.target


sudo systemctl daemon-reload
# OR
systemctl start day4_listlog.service


# PART 4
#######################################################################


touch tmp/list.log tmp/list.log.1

# script will be run 
    cat tmp/list.log >> tmp/list.log.1
#
    crontab -e # and edit

