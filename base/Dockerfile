FROM fedora:23

RUN dnf install -y --nogpgcheck \
  http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm  \
  http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

RUN dnf install -y wget && yum clean all

RUN wget http://download.opensuse.org/repositories/home:/emby/Fedora_23/home:emby.repo -O /etc/yum.repos.d/emby.repo

RUN dnf install -y emby-server && yum clean all
