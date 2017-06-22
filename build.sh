#!/bin/bash

ls -op packer | grep -v / | awk '{print $8}' | tail -n +2 | while read image

do
  packer build packer/$image
done
