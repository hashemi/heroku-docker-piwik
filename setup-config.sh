#!/bin/sh

regex="([^:]+):\/\/([^:]+):([^@]+)@([^:]+):?([0-9]+)?\/(.*)"
if [[ $DATABASE_URL =~ $regex ]]; then
  DB_USERNAME=${BASH_REMATCH[2]}
  DB_PASSWORD=${BASH_REMATCH[3]}
  DB_HOST=${BASH_REMATCH[4]}
  DB_PORT=${BASH_REMATCH[5]:-3306}
  DB_NAME=${BASH_REMATCH[6]}
fi

cp config.ini.php vendor/piwik/piwik/config/config.ini.php

sed -i s/#DB_HOST/$DB_HOST/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_USERNAME/$DB_USERNAME/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_PASSWORD/$DB_PASSWORD/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_NAME/$DB_NAME/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_PORT/$DB_PORT/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_PREFIX/$DB_PREFIX/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#SECRET_TOKEN/$SECRET_TOKEN/ vendor/piwik/piwik/config/config.ini.php
