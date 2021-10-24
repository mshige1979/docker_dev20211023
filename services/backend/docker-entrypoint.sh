#!/bin/bash

echo -e "Starting Rails Server..."
rm -f /backend/tmp/pids/server.pid
bundle exec rails server -b '0.0.0.0'
#bundle exec rdebug-ide --host 0.0.0.0 --port 1234 --dispatcher-port 26162 -- bin/rails s -b 0.0.0.0
