# Resin and Microsoft Azure IoT Edge

Sample Application for deploying Microsoft Azure Edge functionality on a resin.io multicontainer device.

## Getting started
* Create an IoT Hub on your Azure Subscription
* Create an Edge Device and copy your Device Connection String
* Add a Device Variable in your resin.io application (dashboard or cli): AZ_IOT_EDGE_DEV_CONN \<your-secret-device-connection-string\>
* Clone this project and add your resin application repository with 'git remote add' and 'git push resin master'
* Check in Azure Portal if your Edge Device is connected and running (may take some time)
* Deploy a sample module like tempSensor, described [here](https://docs.microsoft.com/en-us/azure/iot-edge/quickstart-linux)
* Subscribe to Device to Cloud (D2C) Messages on your IoT Hub and check if data is arriving

## Known issues
* Check docker storage-drivers on your system. This example is working with 'aufs'. For 'overlay2' resin base image has to be modified.
* Check your firewall settings for AMQP-Connections (Port 5671). There should be a fallback in edgeAgent to WebSocket 443 (did not try)


## Acknowledgements
[Resin.io](https://docs.resin.io/learn/develop/multicontainer/)
[Microsoft Azure IoT Edge](https://docs.microsoft.com/en-us/azure/iot-edge/)