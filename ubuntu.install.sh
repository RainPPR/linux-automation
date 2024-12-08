sudo touch /etc/apt/sources.list
sudo touch /etc/apt/sources.list.d/ubuntu.sources
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
sudo sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sudo sed -i 's/http:/https:/g' /etc/apt/sources.list
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list.d/ubuntu.sources
sudo sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/ubuntu.sources
sudo sed -i 's/http:/https:/g' /etc/apt/sources.list.d/ubuntu.sources
sudo apt update
sudo apt full-upgrade -y
sudo apt install -y \
	fontconfig fonts-noto* fonts-wqy* \
	build-essential make cmake automake clang llvm lld lldb gdb \
	yasm nasm ccache doxygen cppcheck fpc ninja-build \
	ssh unzip tar zip wget curl vim git nodejs npm  \
	python3 pip python3-pip ipython3 python-is-python3
sudo apt autoremove -y
read -p "Press enter to continue . . ."
sudo apt install -y mpv vlc obs-studio libreoffice-common
