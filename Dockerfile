FROM ruby:2.4.0
MAINTAINER liuxh "work_liuxh@163.com"

RUN gem source -a https://gems.ruby-china.org/ && gem source -r https://rubygems.org/ && gem update --system && gem install bundler
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc

# cope site code to docker
RUN mkdir -p /sites/siteapis/
ENV SITE_HOME /sites/siteapis/
WORKDIR /sites/siteapis/
ADD . /sites/siteapis/

# run site web
RUN bundle install
CMD rails s -p 6789 -e production

EXPOSE 6789
