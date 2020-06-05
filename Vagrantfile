# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.synced_folder "share/", "/home/vagrant/share"
  config.vm.network "private_network", ip: "192.168.33.10"
end
