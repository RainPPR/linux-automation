sudo apt update
sudo apt full-upgrade -y
sudo apt install -y \
	fontconfig fonts-noto* fonts-wqy* \
	build-essential make cmake automake clang llvm lld lldb gdb \
	yasm nasm ccache doxygen cppcheck fpc ninja-build \
	ssh unzip tar zip wget curl vim git nodejs npm  \
	python3 pip python3-pip ipython3 python-is-python3
sudo apt autoremove -y

# mpv vlc obs-studio libreoffice-common