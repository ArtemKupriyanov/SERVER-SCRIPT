#!/bin/bash
source 'config.txt'
#creating enviroment
echo -e "$passwd\n$passwd" | sudo passwd ubuntu
sudo -s
perl -i -p -e 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
exit
sudo /etc/init.d/ssh restart
# install packages
sudo apt-get update
sudo apt-get -qq install -y make build-essential git zip python3-pip
wget -c http://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh
bash Anaconda3-4.1.1-Linux-x86_64.sh -b -p ~/anaconda/
export PATH=~/anaconda/bin:$PATH
conda update --all --yes
sudo apt-get install -y python-qt4
conda install --yes gensim
conda install --yes seaborn
export PATH=~/anaconda/bin:$PATH
sudo apt-get -y install python-pip
pip install xgboost
pip install keras
echo -e "from IPython.lib import passwd\nimport sys\nsys.stdout.write(passwd('$passwd'))" > passwd.py
python passwd.py > sha.txt
openssl req -batch -x509 -nodes -days 365 -newkey rsa:1024 -keyout mykey.key -out mycert.pem
jupyter notebook --generate-config
mv sha.txt ./.jupyter/
cd /home/ubuntu/.jupyter/
echo -e -n "# Set options for certficate, ip, password, and toggle off browser auto-opening\nc.NotebookApp.certfile = u'/home/ubuntu/mycert.pem'\nc.NotebookApp.keyfile = u'/home/ubuntu/mykey.key'\n# Set ip to '*' to bind on all interfaces (ips) for the public server\nc.NotebookApp.ip = '*'\nc.NotebookApp.password = u'" > first_parcel.txt
echo -e -n "'\nc.NotebookApp.open_browser = False\n# It is a good idea to set a known, fixed port for server access\nc.NotebookApp.port = 8888\n" > second_parcel.txt
cat first_parcel.txt sha.txt second_parcel.txt > jupyter_notebook_config.py
cd ~
export PATH=~/anaconda/bin:$PATH
wget https://codeload.github.com/ArtemKupriyanov/MACHINE-LEARNING/zip/master
unzip master
jupyter notebook
