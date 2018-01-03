#!/bin/bash
read -p "Are you sure you want to completely blow away the database and files on dev.bobsbullets.net and replace with database and files from bobsbullets.net? [Y/N]: " destroy
if test $destroy = Y; then
  drush @bob.dev -y sql-drop
  drush -y sql-sync @bob.prod @bob.dev
  drush -y rsync @bob.prod:%files @bob.dev:%files
  drush @bob.dev -y en nobots
  drush @bob.dev cr
fi
