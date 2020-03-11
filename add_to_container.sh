#!/bin/bash
str=$(docker port test-mysql)
IFS=':'
read -ra ADDR <<< "$str"
docker_mysql_port=${ADDR[1]}
mysql -P $docker_mysql_port --protocol=tcp -u root -pHGKO$.xu1234 -Bse "drop database if exists db5;create database db5;"
docker exec -i 42178149b9d4 mysql -uroot -pHGKO$.xu1234 db5 < ./dbpro.sql
mysql -P $docker_mysql_port --protocol=tcp -uroot -pHGKO$.xu1234 -Bse "use db5;"

