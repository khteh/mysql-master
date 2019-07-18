#!/bin/bash
docker build -t khteh/mysql-master .
docker push khteh/mysql-master:latest
