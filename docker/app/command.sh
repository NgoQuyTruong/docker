rm -f tmp/pids/server.pid

bundle check || bundle install

rails db:prepare

bundle exec rails s -p 5000 -b 0.0.0.0