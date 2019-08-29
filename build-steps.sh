#!/bin/bash

docker build -t gorpcapp .
docker run -i gorpcapp
