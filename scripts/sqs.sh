#!/bin/sh

# Function to create a queue
create_queue() {
    local QUEUE_NAME=$1
    awslocal sqs create-queue --queue-name "${QUEUE_NAME}" # Command to create sqs queue
}

echo "++ Creating SQS Queues now..."

# Create queues
create_queue "QUEUE_NAME" # Replace QUEUE_NAME with the actual queue name

echo "++ SQS Queues creation finished..."