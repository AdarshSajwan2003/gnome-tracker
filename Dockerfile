FROM fedora:latest

# Install required packages
RUN dnf install -y cmake 
RUN dnf install -y dnf-plugins-core 
RUN dnf clean all
RUN dnf update -y 
RUN dnf upgrade -y