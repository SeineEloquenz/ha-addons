#!/usr/bin/with-contenv bashio
JELLYFIN_URL=$(bashio::config 'jellyfin_url')
sed -i "s|http://jellyfin.weinzi.com|$JELLYFIN_URL|g" ./src/environments/*
npx nx serve
