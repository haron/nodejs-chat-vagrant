# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    config.vm.provision :shell, :path => "provision.sh"
    config.vm.network :forwarded_port, guest: 16558, host: 8080
    config.vm.network :private_network, ip: "192.168.50.2"
end
