#!/bin/bash
app="demo-2"
docker build -t ${app} .
docker run -d -p 56736:80 \
  --name=${app} \
  -v $PWD:/app ${app}