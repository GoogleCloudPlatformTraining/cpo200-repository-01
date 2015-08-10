#! /bin/bash
#
# File: build.sh
#
# Purpose: Drive the building of a Google Compute Engine image
#          using the guestbook Docker container
#

gcloud compute images delete guestbook-image

# Issue meta requests to fill in missing information in the compute-image-build.json file

# Run Packer to build the image
/opt/packer/packer build -t guestbook-image .
