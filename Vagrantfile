# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "centos/7"
  
  config.vm.define "manager1" do |manager1|
	manager1.vm.hostname = "manager1"
	manager1.vm.box = "centos/7"
	manager1.vm.network "private_network", ip: "192.168.1.21"
	manager1.vm.provisionsion "shell", path: "provision.sh"
	end

  config.vm.define "manager2" do |manager2|
	manager2.vm.hostname = "manager2"
	manager2.vm.box = "centos/7"
	manager2.vm.network "private_network", ip: "192.168.1.22"
	manager2.vm.provisionsion "shell", path: "provision.sh"
	end

  config.vm.define "manager3" do |manager3|
	manager3.vm.hostname = "manager3"
	manager3.vm.box = "centos/7"
	manager3.vm.network "private_network", ip: "192.168.1.23"
	manager3.vm.provisionsion "shell", path: "provision.sh"
	end

  config.vm.define "node1" do |node1|
	node1.vm.hostname = "node1"
	node1.vm.box = "centos/7"
	node1.vm.network "private_network", ip: "192.168.1.31"
	node1.vm.provisionsion "shell", path: "provision.sh"
	end

  config.vm.define "node2" do |node2|
	node2.vm.hostname = "node2"
	node2.vm.box = "centos/7"
	node2.vm.network "private_network", ip: "192.168.1.32"
	node2.vm.provisionsion "shell", path: "provision.sh"
	end

  config.vm.define "node3" do |node3|
	node3.vm.hostname = "node3"
	node3.vm.box = "centos/7"
	node3.vm.network "private_network", ip: "192.168.1.33"
	node3.vm.provisionsion "shell", path: "provision.sh"
	end

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  # provisionder-specific configuration so you can fine-tune various
  # backing provisionders for Vagrant. These expose provisionder-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provisionder "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provisionder you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisionsioning with a shell script. Additional provisionsioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provisionsion "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
