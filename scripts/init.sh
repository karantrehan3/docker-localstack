#!/bin/sh
echo "++ Inside Init Script."

echo "++ Running the original entrypoint in the background."
/usr/local/bin/docker-entrypoint.sh &

echo "++ Importing and running the child scripts."
. /usr/local/bin/scripts/sqs.sh
. /usr/local/bin/scripts/s3.sh

# Wait for the background process to finish
wait