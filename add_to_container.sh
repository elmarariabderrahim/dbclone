#!/bin/bash
str=$(docker port test-mysql)
IFS=':'
read -ra ADDR <<< "$str"
docker_mysql_port=${ADDR[1]}
mysql -P $docker_mysql_port --protocol=tcp -u root -pHGKO$.xu1234 -Bse "drop database if exists db5;create database db5;"
docker exec -i 42178149b9d4 mysql -uroot -pHGKO$.xu1234 db5 < ./db1clone.sql
mysql -P $docker_mysql_port --protocol=tcp -uroot -pHGKO$.xu1234 -Bse "use db5; select * from Persons;"
for f in sql_scripts/*; do
input="./$f"
varrr=""
while IFS= read -r line
do
varrr="${varrr}$line"
done < "$input"
echo "$varrr"
mysql -P $docker_mysql_port --protocol=tcp -uroot -pHGKO$.xu1234 -Bse "$varrr"
done
