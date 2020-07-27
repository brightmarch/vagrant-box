Vagrant.configure(2) do |config|
  config.vm.box = "debian/buster64"

  config.vm.provider "virtualbox" do |v|
    v.default_nic_type = nil

    v.gui = false
    v.memory = 2048
    v.cpus = 4
  end

  config.ssh.insert_key = false
end
