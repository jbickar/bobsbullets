#!/bin/bash
read -p "Are you sure you want to completely blow away the database and files on the local bob.dev and replace with database and files from bobsbullets.net? [Y/N]: " destroy
if test $destroy = Y; then
  drush @bob.local -y sql-drop
  drush -y sql-sync @bob.prod @bob.local
  drush -y rsync @bob.prod:%files @bob.local:%files
  drush @bob.local cr
fi
