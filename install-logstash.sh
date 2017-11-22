#/bin/bash

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https openjdk-8-jre-headless openjdk-8-jdk-headless
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list

sudo apt-get update && sudo apt-get install logstash

sudo wget -p "/etc/logstash/conf.d/" https://raw.githubusercontent.com/paulpc/azure-logstash/master/input-logstash.conf