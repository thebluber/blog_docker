FROM alpine:latest

# Install packages
RUN apk --update add \
  bash \
  ruby=2.5.1-r2

# Add files
WORKDIR /app
Add . blog/
