FROM node:20

# Install git
RUN apt-get update && apt-get install -y git

# Set the working directory
WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Keep the container running
CMD ["/entrypoint.sh"]