#!/bin/bash
read -p "Are you sure you want to completely blow away the database and files on test.bobsbullets.net and replace with database and files from bobsbullets.net? [Y/N]: " destroy
if test $destroy = Y; then
  drush @bob.test -y sql-drop
  drush -y sql-sync @bob.prod @bob.test
  drush -y rsync @bob.prod:%files/ @bob.test:%files
  drush @bob.test -y en nobots
  drush @bob.dev -y pm-uninstall googleanalytics
  drush @bob.test cr
fi
