Vagrant.configure(2) do |config|
  config.vm.box = "debian/buster64"

  config.ssh.insert_key = false
  config.vbguest.auto_update = false

  config.vm.provider "virtualbox" do |v|
    v.default_nic_type = nil

    v.gui = false
    v.memory = 2048
    v.cpus = 4
  end
end
