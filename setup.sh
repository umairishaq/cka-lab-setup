#!/bin/bash

set -e

sudo yum update -y && sudo yum install git -y
git clone https://github.com/sandervanvugt/cka.git
