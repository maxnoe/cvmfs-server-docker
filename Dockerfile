FROM almalinux:9

VOLUME ["/var/spool/cvmfs"]
VOLUME ["/srv/cvmfs"]

RUN dnf -y install epel-release https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest.noarch.rpm \ 
    && dnf install -y cvmfs cvmfs-server s3cmd

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["sleep", "infinity"]
