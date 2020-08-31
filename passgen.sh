#!/bin/bash
echo "Enter your name: "
read NAME
echo "Hello $NAME. Enter the length of the password you require: "
read PASSWD

#generate 5 random passwords
for p in $(seq 1 5);
do
    openssl rand -base64 48 | cut -c1-$PASSWD

done