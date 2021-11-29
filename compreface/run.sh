#!/bin/bash
#
# Entrypoint
#
# Ensure persistent data is stored in /data/ and then start the stack

start() {
  echo "Starting CompreFace"
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
}


if grep -q avx /proc/cpuinfo && grep -q avx2 /proc/cpuinfo
then
  start
else
  echo "AVX2 not detected"
fi

