# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  # Give a name to the machine (other than default)
  config.vm.define "Devstack" do |foo|
  end

  # Disable check update
  config.vm.box_check_update = false

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080
  # config.vm.network :forwarded_port, guest: 8000, host: 8000

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network :private_network, ip: '192.168.27.100', mac: '080027027100'

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder ".", "/vagrant", {:mount_options => ['dmode=777','fmode=777']}
  config.vm.synced_folder "~/.ssh/", "/home/vagrant/.host-ssh"
  #config.vm.synced_folder "./gtcnc/", "/opt/stack/horizon/openstack_dashboard/dashboards/gtcnc/"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider :virtualbox do |vb|
    # Don't boot with headless mode
    # vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "3072", "--ostype", "Ubuntu_64", "--cpus", "2"]
  end

  $script = <<SCRIPT
echo 'Provisionning...'
cp /vagrant/load.sh .
su vagrant -c './load.sh'
SCRIPT

  config.vm.provision "shell", inline: $script

end
