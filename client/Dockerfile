FROM almalinux:9

RUN dnf -y install epel-release https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest.noarch.rpm \
    && dnf install -y cvmfs \
    && cvmfs_config setup


ADD ctao.dpps.test.conf /etc/cvmfs/config.d/ctao.dpps.test.conf
ADD default.local /etc/cvmfs/default.local


CMD ["/usr/sbin/init"]
