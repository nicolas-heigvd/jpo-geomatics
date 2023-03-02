#!/bin/bash

set -e
ENV="${RAILS_ENV}"
echo "Environment set to ${ENV}"

mkdir -p tmp/pids
rm -f tmp/pids/server.pid 

echo "Installing assets..."
yarn
rails assets:precompile
rails yarn:install
echo "Assets successfully installed!"

DB_INIT=0
if db_version=$(rails db:version 2>/dev/null)
then
    if [ "${db_version}" = "Current version: 0" ]
    then
        echo "DB is empty"
    else
        echo "DB exists"
        DB_INIT=1
    fi
    rails db:migrate 
else
    echo "DB does not exist"
    rails db:setup
fi

if [ ${DB_INIT} == 0 ]
then
    echo "Performing initial configuration"
    rails db:migrate
    rails db:seed
fi

if [ "${ENV}" = "development" ]
then
    exec rails server -b localhost
elif [ "${ENV}" = "production" ]
then
    redis-server &
    exec puma -C config/puma.rb
fi

exit 0