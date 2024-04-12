#!/bin/bash

version="0.0.2"
registry="registry.pastelcloud.shop"
imageName="jdk17test"
tarName="jdk17test.tar"
buildPath="/build/jdk17test"

#sudo docker login --username admin --password 'dlwk2452!@' registry.pastelcloud.shop
sudo docker build -t $registry/$imageName:$version $buildPath
sudo docker push $registry/$imageName:$version
#sudo docker save -o $buildPath/$tarName $registry/$imageName:$version
#sudo ctr i import $buildPath/$tarName
#sudo ctr i push $registry/$imageName:$version