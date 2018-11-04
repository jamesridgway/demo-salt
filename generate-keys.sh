#!/bin/bash
set -e
yes y | ssh-keygen -q -t rsa -b 4096 -C "demo" -N '' -f salt/users/files/demo_id
yes y | ssh-keygen -q -t rsa -b 4096 -C "jenkins" -N '' -f salt/users/files/jenkins_id
echo -e  "\n\nKeys generated successfully!"
