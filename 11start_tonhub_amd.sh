#!/bin/bash
npm install


while true; do
  node send_universal.js --api lite --bin ./pow-miner-opencl --givers 1000 --gpu 11
  sleep 1;
done;
