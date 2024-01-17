#!/bin/bash

if s3cmd ls s3:// | grep cvmfs ; then
  echo "Bucket alrady exists"
else
  echo "Creating bucket"
  s3cmd mb s3://cvmfs
fi

cvmfs_server mkfs \
    -o root \
    -s /etc/cvmfs/mys3.conf \
    -w http://cvmfs-storage:9000/ \
    ctao.dpps.test

exec "$@"
