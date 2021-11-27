#!/bin/bash

echo Hello world!

echo "this is a line" > /file.txt

echo file created!

export wtf=test

echo glob var.


echo grep -Po '"MB_KEY": *\K"[^"]*"' /data/options.json
echo grep -Po '"MB_KEY": *\K"[^"]*"' /data/options.json > file.txt