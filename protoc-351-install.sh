#!/bin/bash
# protoc351 installation steps
wget https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip
unzip protoc-3.5.1-linux-x86_64.zip -d protoc3
sudo mv protoc3/bin/* /usr/local/bin/
sudo mv protoc3/include/* /usr/local/include/
sudo chown $USER /usr/local/bin/protoc 
sudo chown -R $USER /usr/local/include/google
rm -rf protoc3/
rm protoc-3.5.1-linux-x86_64.zip
