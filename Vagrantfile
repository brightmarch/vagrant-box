Vagrant.require_version ">=1.7"

Vagrant.configure(2) do |config|
  config.vm.box = "https://s3.amazonaws.com/brightmarch.boxes/debian78-base.box"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/provision.yml"
  end

  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "2048"
    v.vmx["numvcpus"] = "2"
  end
end
