#!/bin/bash
set -e

if [ "$1" = 'init' ]; then
  echo "*-*-*-* INIT *-*-*-*"

  cd /apps/$2/
  echo "*-*-*-* Installing Site Dependencies *-*-*-*"
  bundle install
  echo "*-*-*-* Installing Site *-*-*-*"
  npm install
  echo "*-*-*-* Building Site *-*-*-*"
  npm run build
elif [ "$1" = 'start' ]; then
  echo "*-*-*-* START *-*-*-*"

  cd /apps/$2/
  echo "*-*-*-* Installing Dependencies *-*-*-*"
  bundle install
  echo "*-*-*-* Starting Node Server *-*-*-*"
  npm start
else
  exec bash
fi