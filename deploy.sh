#!/bin/bash

if [ -f env.tar.age ]; then
age -d -i $AGE_KEY env.tar.age > env.tar
dtar=env.tar
fi

if [ ! -s $dtar ]; then
  echo "the tar file is empty"
  exit 1

else
  echo "the tar file is not empty"
  echo "extracting tar file"
  tar xfv $dtar
  echo "starting docker compose up"
  sudo docker compose up -d
fi

sleep 30
curl https://firefly.lab.bamje.io
exit

