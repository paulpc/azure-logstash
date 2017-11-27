#!/bin/bash
for eshost in `cat /etc/logstash/hosts.txt`; do
  echo $eshost
  ssh $eshost "$1"
done