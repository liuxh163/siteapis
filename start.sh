#!/bin/sh
bundle update
bundle install
rake db:migrate
rails s -p 6789 -e production
