#!/bin/bash

# Start the run once job.
echo "Docker container has been started"

crontab -u xprize - <<EOF
* * * * * /home/xprize/work/hello.sh >> /tmp/cron.log 2>&1
EOF
