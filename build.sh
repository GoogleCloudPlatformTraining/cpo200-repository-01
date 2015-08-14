#! /bin/bash
#
# File: build.sh
#
# Purpose: Drive the building of a Google Compute Engine image
#          using the guestbook Docker container
#

PROJECT_ID=$(curl -s 'http://metadata/computeMetadata/v1/project/project-id' -H 'Metadata-Flavor: Google')

gcloud compute images delete guestbook-image

# Issue meta requests to fill in missing information in the compute-image-build.json file

# Run Packer to build the image
sudo /opt/packer/packer build \
  -var 'project_id=${PROJECT_ID}'
  compute-image-build.json
