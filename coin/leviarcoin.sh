#auto_install.sh
#SCRIPT AUTO INSTALL MINING
#!/bin/bash
cd && sudo apt update && apt upgrade -y ;
sudo apt-get install software-properties-common ;  	
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev htop screen -y ;
sudo git clone https://github.com/xmrig/xmrig.git mining && mkdir -p ~/mining/build && cd ~/mining/build && cmake .. && make ;
cd ~/mining/build/ && mv xmrig ~/ && cd ~/ ;


#leviarcoin.sh 
{
echo "#!/bin/bash"
echo " screen ./xmrig -o pool.leviarcoin.hashvault.pro:8888 -u LtMig6TakmafkL6THtiN9TCB96yRhK3rUgsdsCPGqhoU6DvrwkU6fDgS9mbSqfmsYG3MG5nBH5SLXJMx3qLx8RAf1KSWaNk -p $(hostname):mining@secrectvn.com-k --max-cpu-usage=95 "
} >> ~/intense.sh ;
