# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  # Will not check for box updates during every startup.
  config.vm.box_check_update = false


  # router1
  config.vm.define "router1" do |router1|
    router1.ssh.username='vyos'
    router1.ssh.password='vyos'
    router1.vm.box = "vyos/equuleus"
    router1.vm.hostname = "router1.mylab.com"
    router1.vm.network "public_network", bridge: "eno1", ip: "192.168.123.103"
    router1.vm.network "private_network", ip: "192.168.56.1", netmask: "255.255.255.252"

  end


  # router2
  config.vm.define "router2" do |router2|
    router2.ssh.username = 'vyos'
    router2.ssh.password = 'vyos'
    router2.vm.box = "vyos/equuleus"
    router2.vm.hostname = "router2.mylab.com"
    router2.vm.network "public_network", bridge: "eno1", ip: "192.168.123.104"
    router2.vm.network "private_network", ip: "192.168.56.2", netmask: "255.255.255.252"
    router2.vm.network "private_network", ip: "192.168.56.5", netmask: "255.255.255.252"
  end

  # router3
  config.vm.define "router3" do |router3|
    router3.ssh.username = 'vyos'
    router3.ssh.password = 'vyos'
    router3.vm.box = "vyos/equuleus"
    router3.vm.hostname = "router3.mylab.com"
    router3.vm.network "public_network", bridge: "eno1", ip: "192.168.123.105"
    router3.vm.network "private_network", ip: "192.168.56.6", netmask: "255.255.255.252"
  end
end
