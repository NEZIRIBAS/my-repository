#!/bin/bash -x

yum update -y


FOLDER="https://raw.githubusercontent.com/NEZIRIBAS/my-repository/refs/heads/main/101-kittens-carousel-static-website-ec2/static-web"

wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg

systemctl start httpd
systemctl enable httpd