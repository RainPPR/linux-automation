sudo sed -e 's|^metalink=|#metalink=|g' \
         -e 's|^#baseurl=http://download.example/pub/fedora/linux|baseurl=https://mirrors.ustc.edu.cn/fedora|g' \
         -i.bak \
         /etc/yum.repos.d/fedora.repo \
         /etc/yum.repos.d/fedora-updates.repo
rpm-ostree upgrade
rpm-ostree install --assumeyes --allow-inactive --idempotent \
	gcc gcc-c++ cppcheck make cmake automake \
	clang llvm lld lldb gdb fpc vim git \
	wget curl nodejs unzip tar zip \
	yasm nasm ccache doxygen ctags ninja-build \
	python3 pip python3-pip python3-ipython \
	libreoffice mpv vlc obs-studio fcitx5 chromium
