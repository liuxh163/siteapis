#!/bin/sh
bundle update
bundle install
rake db:migrate
rake db:seed
rake data:create_microposts
rails s -p 6789
