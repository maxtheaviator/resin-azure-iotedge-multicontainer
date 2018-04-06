FROM resin/amd64-debian

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip 
RUN pip3 install --upgrade setuptools pip

COPY ./app /app
COPY ./azure-iotedge-runtime /azure-iotedge-runtime

# Install balena & create docker "symlink" 
RUN apt-get install -y curl
RUN curl -sfL https://balena.io/install.sh | sh
COPY ./azure-iotedge-runtime/docker /usr/local/bin
RUN chmod +x /usr/local/bin/docker

# Install azure-iot-edge-runtime-ctl
RUN pip3 install -U azure-iot-edge-runtime-ctl

CMD ["/bin/sh", "/app/startIotEdgeDevice.sh"]