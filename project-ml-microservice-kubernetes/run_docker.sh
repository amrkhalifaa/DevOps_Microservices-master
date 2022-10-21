#!/usr/bin/env bash
docker build --tag=ml-app .
docker image ls
docker run -p 8000:80 ml-app

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag

# Step 2: 
# List docker images

# Step 3: 
# Run flask app
