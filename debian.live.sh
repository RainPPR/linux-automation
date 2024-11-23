sudo touch /etc/apt/sources.list
sudo touch /etc/apt/sources.list.d/debian.sources
echo "Acquire::http::Pipeline-Depth \"0\";" > /etc/apt/apt.conf.d/99nopipelining
sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sudo sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources
sudo sed -i -e 's|security.debian.org/\? |security.debian.org/debian-security |g' \
            -e 's|security.debian.org|mirrors.ustc.edu.cn|g' \
            -e 's|deb.debian.org/debian-security|mirrors.ustc.edu.cn/debian-security|g' \
            /etc/apt/sources.list
sudo apt update