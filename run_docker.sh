#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag app:latest .
# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run --rm -p 8000:80 app:latest