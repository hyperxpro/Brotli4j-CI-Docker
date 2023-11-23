# Use the base image with Ubuntu 20.04 for ARM64
FROM arm64v8/ubuntu:20.04

# Update the package list and install required packages
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy gpg curl gnupg2 autoconf automake libtool make tar git cmake build-essential wget

# Install JDK 8
RUN wget -O - https://apt.corretto.aws/corretto.key | gpg --dearmor -o /usr/share/keyrings/corretto-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/corretto-keyring.gpg] https://apt.corretto.aws stable main" | tee /etc/apt/sources.list.d/corretto.list
RUN apt-get update
RUN apt-get install -qy java-1.8.0-amazon-corretto-jdk
