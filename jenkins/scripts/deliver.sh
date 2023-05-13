#!/bin/bash

# Variables
SERVER_HOST="192.168.1.100"
SERVER_USER="user"
SERVER_DIR="/opt/tomcat/webapps"

# Copy package to server
scp target/Inventory-Management-0.0.1-SNAPSHOT.war ${SERVER_USER}@${SERVER_HOST}:${SERVER_DIR}

# Restart Tomcat on server
ssh ${SERVER_USER}@${SERVER_HOST} "/opt/tomcat/bin/shutdown.sh"
ssh ${SERVER_USER}@${SERVER_HOST} "/opt/tomcat/bin/startup.sh"
