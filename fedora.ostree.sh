sudo sed -e 's|^metalink=|#metalink=|g' \
         -e 's|^#baseurl=http://download.example/pub/fedora/linux|baseurl=https://mirrors.ustc.edu.cn/fedora|g' \
         -i.bak \
         /etc/yum.repos.d/fedora.repo \
         /etc/yum.repos.d/fedora-updates.repo
rpm-ostree upgrade
rpm-ostree install --assumeyes --allow-inactive --idempotent \
	gcc gcc-c++ make cmake automake clang llvm lld lldb gdb \
	yasm nasm ccache doxygen ctags cppcheck fpc ninja-build \
	unzip tar zip wget curl vim git nodejs mpv vlc obs-studio \
	python3 pip python3-pip python3-ipython libreoffice \
