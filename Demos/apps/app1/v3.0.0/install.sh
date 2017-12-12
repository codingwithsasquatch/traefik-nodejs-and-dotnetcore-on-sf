#!/bin/bash

# Select cluster
sfctl cluster select --endpoint  https://sf-ldvsrfr7o4xn4.westus.cloudapp.azure.com:19080

# Upload the application files to the image store
# (note the last folder name, Debug in this example)
sfctl application upload --path  C:\Code\sf-ldvsrfr7o4xn4\sf-ldvsrfr7o4xn4\pkg\Debug --show-progress

# Register the application (manifest files) from the image store
# (Note the last folder from the previous command is used: Debug)
sfctl application provision --application-type-build-path Debug --timeout 500

# Create an instance of the registered application and 
# auto deploy any defined services
sfctl application create --app-name fabric:/nodeapp1 --app-type NodeApp --app-version 1.0.0