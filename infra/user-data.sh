#!/bin/bash
yum update -y
yum install -y docker
service docker start
docker login -u "${docker_username}" -p "${docker_password}"
docker pull vaibhav7616/ecommerce-site:latest
docker run -d -p 80:80 --restart always vaibhav7616/ecommerce-site:latest
