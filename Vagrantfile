Vagrant.require_version ">=1.7"

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.box_version = "8.7"

  config.ssh.insert_key = false
  config.vm.provision :shell, :path => "./provision"

  config.vm.provider "virtualbox" do |v|
    v.gui = false
    v.memory = 2048
    v.cpus = 4
  end
end
