FROM centos:7.2.1511
MAINTAINER liuxh work_liuxh@163.com

RUN yum -y install gcc-c++ patch readline readline-devel zlib zlib-devel
RUN yum -y install libyaml-devel libffi-devel openssl-devel make
RUN yum -y install bzip2 autoconf libtool bison iconv-devel sqlite-devel

RUN yum -y install which
RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN curl -L get.rvm.io | bash -s stable
RUN source /etc/profile.d/rvm.sh

RUN rvm install 2.4.0
RUN rvm use 2.4.0 --default

RUN echo '[[ -s "/etc/profile.d/rvm.sh" ]] && . "/etc/profile.d/rvm.sh"' >>~/.bashrc
RUN source ~/.bashrc

RUN gem source -a https://gems.ruby-china.org/ && gem source -r https://rubygems.org/ && gem update --system && gem install bundler
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN gem install rails -v 5.0.3
