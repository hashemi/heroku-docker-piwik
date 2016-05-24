# Piwik on Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

[Piwik](http://www.piwik.com) Version: *2.16.1*

## Installation

Deploy to Heroku and add mysql add-on then simply follow install steps.

## Technical stuff

 - Uses php-fpm with 4 workers(128MB per worker)
 - Nginx with one worker
 - Access to config and temp is disabled (secure for live production)

## How about plugins?

You can use composer to install additional plug-ins. See https://github.com/composer/installers 
for more info...

## Update

Please do not use the update feature build into piwik. This will 
upgrade the files and the database but not the image. So if you 
restart you will have the new database schema but the old files. Now you are screwed.

Instead:
    * Wait for an update of this repo or submit a PR
    * `git pull`
    * `git push dokku master`

## What about that Dockerfile?

You can run app on any cloud service that supports docker(dokku, deis, metal...).
