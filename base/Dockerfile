FROM fedora:23

RUN dnf install -y --nogpgcheck \
  http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm  \
  http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# RUN dnf install -y epel-release

RUN dnf install -y wget && yum clean all

RUN wget https://raw.githubusercontent.com/jose-pr/MediaBrowser.Releases/master/Repository/MediaBrowserServer-repositories.noarch.rpm && rpm -i MediaBrowserServer-repositories.noarch.rpm

RUN dnf update MediaBrowserServer-repositories

RUN yum-config-manager --enable MediaBrowserServer-Dependancies

RUN dnf install -y MediaBrowserServer