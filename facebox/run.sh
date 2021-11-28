#!/bin/bash
values=`cat /data/options.json`
for s in $(echo $values | jq -r "to_entries|map(\"\(.key)=\(.value|tostring)\")|.[]" ); do
    export $s
done
/app/facebox