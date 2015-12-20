FROM fedora:21
MAINTAINER David <david@private.pro>

RUN yum install -y -q epel-release

# Install Emby Server
wget http://download.opensuse.org/repositories/home:/emby/Fedora_21/home:emby.repo -O /etc/yum.repos.d/emby.repo
#
RUN yum install -y -q emby-server

VOLUME /config
VOLUME /content

