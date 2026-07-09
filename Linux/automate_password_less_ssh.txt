#!/bin/bash

echo "enter the remote username:"
read remote_user
echo "enter number of servers: "
read servers_count
echo "enter the path of pem file with file name: "
read pem_path

ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa
chmod 400 "$pem_path"

for ((i=0; i<$servers_count; i++))
do
	echo "enter server name: "
	read remote_host
	echo "copying key file to $remote_host...."
	ssh-copy-id -f -i ~/.ssh/id_rsa.pub -o IdentityFile=$pem_path "$remote_user@$remote_host"

done
