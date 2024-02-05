
  GNU nano 4.8                                         start_tonhub_amd.sh
#!/bin/bash
npm install


while true; do
  node send_universal.js --api lite --bin ./pow-miner-opencl --givers 1000 --gpu 10
  sleep 1;
done;
