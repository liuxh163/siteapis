#!/bin/sh
bundle update
bundle install
rake db:migrate
