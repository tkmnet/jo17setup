#!/bin/sh

update-rrsoacis

touch /tmp/ok

cd /home/oacis/rrs-oacis/rrsenv/workspace
su oacis -c 'mkdir 1'
cd 1
su oacis -c "echo \"SERVER_SS='robocup@172.19.0.1'\" > ./config.cfg"
su oacis -c "echo \"SERVER_C1='robocup@172.19.0.1'\" >> ./config.cfg"
su oacis -c "echo \"SERVER_C2='robocup@172.19.0.1'\" >> ./config.cfg"
su oacis -c "echo \"SERVER_C3='robocup@172.19.0.1'\" >> ./config.cfg"

