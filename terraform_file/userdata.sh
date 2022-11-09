#! /bin/bash
hostnamectl set-hostname ${server-name}
yum update -y
amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user
newgrp docker
# install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" \
-o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
yum install git -y
TOKEN="XXXXXXXXXXXXXXXXXXXXXXXXX"
cd /home/ec2-user && git clone https://$TOKEN@github.com/usuladams/Terraform_bookstore.git
cd /home/ec2-user/Terraform_bookstore/
docker-compose up -d



