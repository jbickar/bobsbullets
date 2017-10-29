#!/bin/bash
read -p "Are you sure you want to completely blow away the database and files on dev.bobsbullets.net and replace with database and files from bobsbullets.net? [Y/N]: " destroy
if test $destroy = Y; then
  drush @bob.dev -y sql-drop
  drush sql-sync @bob.prod @bob.dev -y
  drush rsync @bob.prod:%files @bob.dev:%files -y
  drush @bob.dev -y en nobots
fi
