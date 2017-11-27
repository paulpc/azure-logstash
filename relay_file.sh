#!/bin/bash
for eshost in `cat /etc/logstash/hosts.txt`; do
  echo $eshost
  scp $1 $eshost:/tmp/
done