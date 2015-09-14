# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

  config.vm.box = "laravel/homestead"

  config.vm.network "forwarded_port", guest: 80, host: 8001, auto_correct: true

  config.vm.network "private_network", ip: "192.168.50.20"

  config.vm.synced_folder "../web", "/var/www/web", create: true, group: "www-data", owner: "www-data"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "Machake Vagrant Base"
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "shell", path: "scripts/enable.sh"

end
