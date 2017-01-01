mkdir BBB-Pru-Development
cd BBB-Pru-Development

wget http://software-dl.ti.com/ccs/esd/CCSv7/CCS_7_0_0/exports/CCS7.0.0.00042_web_linux-x64.tar.gz
tar -zxvf CCS7.0.0.00042_web_linux-x64.tar.gz

#Install via Docker because i don't want the compiler and libs in my system
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install docker-engine
sudo service docker start
docker pull kylemanna/am335x

wget http://software-dl.ti.com/processor-sw/esd/PROCESSOR-SDK-LINUX-AM335X/03_01_00_06/exports/ti-processor-sdk-linux-am335x-evm-03.01.00.06-Linux-x86-Install.bin
chmod +x ./ti-processor-sdk-linux-am335x-evm-03.01.00.06-Linux-x86-Install.bin
./ti-processor-sdk-linux-am335x-evm-03.01.00.06-Linux-x86-Install.bin
