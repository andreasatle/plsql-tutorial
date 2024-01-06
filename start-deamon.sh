#!/usr/bin/env bash
# Start the daemon
# Usage: start-deamon.sh
CONTAINER_NAME=oracle-plsql
LISTENER_PORT=1521
EXPRESS_PORT=5500
ADMIN_PASSWD=qwe123
ORACLE_DB_PATH=/Users/andreasatle/Oracle-PLSQL/oradata
IMAGE_NAME=container-registry.oracle.com/database/express:21.3.0-xe

docker run --name ${CONTAINER_NAME}          \
    -p ${LISTENER_PORT}:1521                 \
    -p ${EXPRESS_PORT}:5500                  \
    -e ORACLE_PWD=${ADMIN_PASSWD}            \
    -v ${ORACLE_DB_PATH}:/opt/oracle/oradata \
    ${IMAGE_NAME}