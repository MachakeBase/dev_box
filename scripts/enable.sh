#!/bin/bash
set -x # Print commands and their arguments as they are executed.


echo "Enabling All Sites..."

FILES=/vagrant/sites/*
for f in $FILES
do
  echo "Enabling site $f..."
  sudo cp $f /etc/nginx/sites-available/${f##*/}
  sudo ln -s /etc/nginx/sites-available/${f##*/} /etc/nginx/sites-enabled/
done

sudo service nginx restart