# Use a lightweight base image
## Dockerfile for Hello-world
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Copy your application into the container
COPY hello-world /app/

# Define the command to run your application
CMD ["./hello-world"]
