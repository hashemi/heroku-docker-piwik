#!/bin/sh

cp config.ini.php vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_HOST/$DB_HOST/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_USERNAME/$DB_USERNAME/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_PASSWORD/$DB_PASSWORD/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_NAME/$DB_NAME/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_PORT/$DB_PORT/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#DB_PREFIX/$DB_PREFIX/ vendor/piwik/piwik/config/config.ini.php
sed -i s/#SECRET_TOKEN/$SECRET_TOKEN/ vendor/piwik/piwik/config/config.ini.php
