# vyos-demo

Very simple Network Automation for building a BGP network in VYOS using Ansible and Vagrant in VirtualBox environment. This has been tested in a Fedora Core 37 Operating system only. Its likely going to fail the vagrant provisioning because it is explicitly using eno1 when provisioning the public interface. 

The public_network will be bridge to your existing home network so you can access the SSH directly. Its currently using 192.168.123.0/24 as the default subnet. While the private_network is using 192.168.5.0/30 and 192.168.56.4/30 for point-to-point connectivity. By default, we are ignoring the ssh host key as well in the ansible.cfg to allow you to conveniently recrete the lab and reconnect fault-free connection to ssh.



Requirement:

1. Ansible
2. Vagrant
3. Virtualbox
4. Vagrant 
5. Vagrant vyos plugin 
6. Git

Instructions:

1. Clone this repo using git.
2. run vagrant plugin install vagrant-vyos
3. vagrant up
4. ansible-playbook -i inventory bgp.yaml
   

Network Diagram: