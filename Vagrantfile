Vagrant.configure("2") do |config|
  # Конфигурация для ВМ client
  config.vm.define "client" do |client|
    client.vm.box = "ubuntu/bionic64"
    config.vm.box_check_update = false
    config.vm.hostname = "client"
    client.vm.network "private_network", ip: "192.168.56.10"
    client.vm.provision "shell", path: "provision_client.sh"
  end

  # Конфигурация для ВМ server
  config.vm.define "server" do |server|
    server.vm.box = "ubuntu/bionic64"
    config.vm.box_check_update = false
    config.vm.hostname = "server"
    server.vm.network "private_network", ip: "192.168.56.11"
    server.vm.provision "shell", path: "provision_server.sh"
  end
end
