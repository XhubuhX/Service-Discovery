sudo apt update -y
sudo apt install wget gpg -y
sudo apt install lsb-release -y

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyr>

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_rele>

sudo apt update && sudo apt install consul

consul --version

sudo cp /etc/consul.d/consul.hcl /etc/consul.d/consul.backup

sudo chmod 777 -R /etc/consul.d/

cat conf.txt >> /etc/consul.d/consul.hcl

sudo nohup consul agent -dev -config-dir /etc/consul.d/ &

consul members

reset
