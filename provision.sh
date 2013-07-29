#!/bin/sh

sudo cp /vagrant/sources.list /etc/apt
sudo apt-get -qq update;
sudo apt-get install -y git python-software-properties
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get -qq update;
sudo apt-get install -y nodejs
cd /home/vagrant
git clone https://github.com/geekuillaume/Node.js-Chat
cd Node.js-Chat/
npm install
nodejs server.js > /dev/null 2>&1 &
echo "Go to http://localhost:8080"
