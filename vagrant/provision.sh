#!/bin/bash -e          

function add_host {
	echo "checking hosts file for $1"
	EXISTS=`grep $2 /etc/hosts | wc -l`
	if [ $EXISTS -eq 0 ];then
		echo "$2    $1.coetzee.com    $1" >> /etc/hosts
	else
		echo "host $1 exists"
	fi
}


add_host centos 192.168.3.41
add_host master 192.168.3.42
add_host devstack01 192.168.3.43
add_host devstack02 192.168.3.44
add_host devjobs1 192.168.3.45
add_host devjobs2 192.168.3.46
add_host devjobs3 192.168.3.47
add_host devedm01 192.168.3.48
add_host devedm02 192.168.3.49
add_host devzookeep01 192.168.3.50
add_host devzookeep02 192.168.3.51
add_host devzookeep03 192.168.3.52
add_host devrmq01 192.168.3.53
add_host devrmq02 192.168.3.54
