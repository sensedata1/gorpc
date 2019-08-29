#!/bin/bash

docker build -t gorpcapp .
docker run -it gorpcapp
