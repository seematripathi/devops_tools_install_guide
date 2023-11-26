#!/bin/bash 

#sonarqube using docker image

sudo docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube:latest
