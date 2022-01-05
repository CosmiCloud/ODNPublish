#!/bin/bash

cd /root/ot-node

systemctl stop cron
forever stop index.js

mysql -u root  -e "DROP DATABASE operationaldb"

mysql -u root  -e "CREATE DATABASE operationaldb /*\!40100 DEFAULT CHARACTER SET utf8 */;"
mysql -u root -e "update mysql.user set plugin = 'mysql_native_password' where User='root';"
mysql -u root -e "flush privileges;"
npx sequelize --config=./config/sequelizeConfig.js db:migrate
forever start -a -o out.log -e out.log index.js
systemctl start cron
