#!/bin/bash
read -p "Are you sure you want to completely blow away the database and files on the local bob.dev and replace with database and files from bobsbullets.net? [Y/N]: " destroy
if test $destroy = Y; then
  drush @bob.local -y sql-drop
  drush sql-sync @bob.prod @bob.local -y
  drush rsync @bob.prod:%files @bob.local:%files -y
fi
