#!/bin/bash
EC2_INSTANCE_ID=$(curl -s http://18.141.179.194/latest/meta-data/instance-id)
EC2_AZ=$(curl -s http://18.141.179.194/latest/meta-data/placement/availability-zone)
sed -i "s/was deployed/was deployed on $EC2_INSTANCE_ID in $EC2_AZ/g" /var/www/html/index.html
chmod 664 /var/www/html/index.html