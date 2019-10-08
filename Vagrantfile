Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_version = "20191003.0.0"

  config.ssh.insert_key = false
  #config.vm.provision :shell, :path => "./provision"

  config.vm.provider "virtualbox" do |v|
    v.default_nic_type = nil

    v.gui = false
    v.memory = 2048
    v.cpus = 4
  end
end
