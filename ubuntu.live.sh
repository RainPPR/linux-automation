sudo touch /etc/apt/sources.list
sudo touch /etc/apt/sources.list.d/ubuntu.sources
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
sudo sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sudo sed -i 's/http:/https:/g' /etc/apt/sources.list
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list.d/ubuntu.sources
sudo sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/ubuntu.sources
sudo sed -i 's/http:/https:/g' /etc/apt/sources.list.d/ubuntu.sources
sudo apt update