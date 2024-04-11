#!/bin/sh

# Function to create an s3 bucket
create_s3_bucket() {
    local BUCKET_NAME=$1
    awslocal s3api create-bucket --bucket "${BUCKET_NAME}" # Command to create sqs queue
}

echo "++ Creating S3 bucket now..."

# Create bucket
create_s3_bucket "bucket-name" # Replace bucket-name with the actual bucket name

echo "++ S3 bucket creation finished..."