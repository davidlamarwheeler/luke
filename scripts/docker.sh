#!/usr/bin/env bash

service docker start
usermod -a -G docker ec2-user
