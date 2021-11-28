#!/bin/bash
#
# Entrypoint
#
# Ensure persistent data is stored in /data/ and then start the stack

values=`cat /data/options.json`
for s in $(echo $values | jq -r "to_entries|map(\"\(.key)=\(.value|tostring)\")|.[]" ); do
    export $s
done

if [ "$PGDATA" == "/data/database" ] && [ -d /data ]
then
   if [ ! -d  /data/database ]
   then
      cp -rp /var/lib/postgresql/data /data/database
   fi
fi

chown -R postgres:postgres $PGDATA

/usr/bin/supervisord

