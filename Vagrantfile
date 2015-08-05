Vagrant.require_version ">=1.7"

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  #config.ssh.insert_key = false

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/provision.yml"
  end

  config.vm.provider "virtualbox" do |v|
    v.gui = false
    v.memory = 2048
    v.cpus = 2
  end
end
