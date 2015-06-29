VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">=1.6"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/provision.yml"
  end

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", "2048"]
    v.customize ["modifyvm", :id, "--cpus", "8"]
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
    v.customize ["modifyvm", :id, "--hwvirtex", "on"]
  end
end
