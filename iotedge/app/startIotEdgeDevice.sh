#!/bin/sh
echo "Building custom Docker Image"
docker build -t local/azure-iotedge-runtime-resin:latest /azure-iotedge-runtime

echo "Adding Device Connection String to config file"
sed -i '/deviceConnectionString/c\   \"deviceConnectionString\" : \"'$AZ_IOT_EDGE_DEV_CONN'\",' /azure-iotedge-runtime/edge_config.json

echo "Configuring Azure Edge Device"
iotedgectl setup --config-file /azure-iotedge-runtime/edge_config.json --auto-cert-gen-force-no-passwords

echo "Starting Azure Edge Device"
iotedgectl start

#Keep Container alive
python3 /app/hello.py