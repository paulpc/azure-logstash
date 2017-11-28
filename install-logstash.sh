#/bin/bash

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-5.x.list

# installing logstash
sudo apt-get update
sudo apt-get install openjdk-8-jre-headless openjdk-8-jdk-headless logstash

# getting the template
curl https://raw.githubusercontent.com/paulpc/azure-logstash/master/input-logstash.conf | sudo tee /etc/logstash/conf.d/logstash_template.conf

# initializing the hosts file
sudo touch /etc/logstash/hosts.txt

# getting the helper scripts
curl https://raw.githubusercontent.com/paulpc/azure-logstash/master/run_command.conf | sudo tee /usr/local/bin/run_command.sh
sudo chmod +xxx /usr/local/bin/run_command.sh

curl https://raw.githubusercontent.com/paulpc/azure-logstash/master/relay_file.sh | sudo tee /usr/local/bin/relay_file.sh
sudo chmod +xxx /usr/local/bin/relay_file.sh
