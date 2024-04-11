# Use the official LocalStack image as the base image
FROM localstack/localstack

# Set environment variables if needed
ENV DEBUG=0

# Install dos2unix
RUN apt-get update && apt-get install -y dos2unix

# Copy your scripts directory into the container
COPY scripts/ /usr/local/bin/scripts/

# Convert the line endings of the script files and make them executable
RUN dos2unix /usr/local/bin/scripts/* && chmod +x /usr/local/bin/scripts/*

# Define the entrypoint to run your script on container startup
ENTRYPOINT ["/usr/local/bin/scripts/init.sh"]