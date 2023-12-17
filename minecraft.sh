#!/bin/bash

mkdir server && cd server

curl -L -o paper.jar curl -L -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.2/builds/318/downloads/paper-1.20.2-318.jar

sudo apt update
sudo apt install openjdk-17-jre-headless

java -jar paper.jar

sed -i 's/false/true/g' eula.txt
