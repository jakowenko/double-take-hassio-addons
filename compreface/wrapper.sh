#!/bin/bash
#
# Entrypoint
#
# Ensure persistent data is stored in /data/ and then start the stack

if [ "$PGDATA" == "/data/pgsql" ] && [ -d /data ]
then
   if [ ! -d  /data/pgsql ]
   then
      # Populate
      cp -rp /var/lib/postgresql/data /data/pgsql
   fi
fi

chown -R postgres:postgres $PGDATA

/usr/bin/supervisord

