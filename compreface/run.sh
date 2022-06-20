#!/bin/bash
#
# Entrypoint
#
# Ensure persistent data is stored in /data/ and then start the stack

set -euo pipefail

start() {
  echo "Starting CompreFace" >&2
  values=$(cat /data/options.json)
  for s in $(echo "$values" | jq -r "to_entries|map(\"\(.key)=\(.value|tostring)\")|.[]" ); do
      export "${s?}"
  done

  if [ "$PGDATA" == "/data/database" ] && [ -d /data ]
  then
    if [ ! -d  /data/database ]
    then
        cp -rp /var/lib/postgresql/data /data/database
    fi
  fi

  chown -R postgres:postgres "$PGDATA"

  exec /usr/bin/supervisord
}


if grep -q avx /proc/cpuinfo
then
  start
else
  echo "AVX not detected" >&2
  exit 1
fi
