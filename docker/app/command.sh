rm -f tmp/pids/server.pid

bundle check || bundle install

bundle exec yarn install --check-files

rails db:prepare

bundle exec rails s -p 3000 -b 0.0.0.0