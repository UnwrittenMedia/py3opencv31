FROM ubuntu:latest

COPY . /opt/setup
RUN /opt/setup/setup.sh
