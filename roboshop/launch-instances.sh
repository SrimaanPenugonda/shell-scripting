#!/bin/bash

INFO "Launch EC2 Instances"

case $1 in
      launch)
        for component in frontend catalogue cart user shipping payment mysql mongo rabbitmq redis;do
         echo "Launch ${component} spot instance"
         aws ec2 run-instances --launch-template LaunchTemplateId=lt-06422ac4f94f18990 --tag-specifications \
         "ResourceType=instance,Tags=[{Key=Name,Value=${component}}]" &>>/tmp/instanceslaunch_log
        done
      ;;
      routes)
        INFO "updating routes"
        for component in frontend catalogue cart user shipping payment mysql mongo rabbitmq redis;do
          echo "create A record for ${component}"
          IP=$(aws describe-instances --filter Name=tag:Name,Value=${component} Name=instance-state-name,Value=running | jq \
          '.Reservations[].Instances[].PrivateIpAddress')
          sed -e "s/COMPONENT/${component}/" -e "s/IPADDRESS/${IP}/" record.json >/tmp/${component}.json
          aws route53 change-resource-record-sets --hosted-zone-id Z054832619MOTOCO0ITHS --change-batch file:///tmp/${component}.json
          done
        ;;
esac

