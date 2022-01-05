#!/bin/bash

# verify we can access our webpage successfully
sudo curl -v --silent localhost:80 2>&1 | grep Congratulations
