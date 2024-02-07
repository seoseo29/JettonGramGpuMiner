#!/bin/bash
npm install

if [ -z "$1" ]
then
  echo "Please specify the number of GPUs as an argument."
  exit 1
fi

while true; do
  for i in $(seq 0 $(($1 - 1)))
  do
      node send_universal.js --api lite --bin ./pow-miner-cuda --givers 1000 tonhub --gpu $i &
  done
  sleep 1
  wait
done

