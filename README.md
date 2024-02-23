# cmvs server in docker

Run `docker-compose up -d`


## Stratum 0 server

To setup a repository and publish changes:

```
user@host $ docker compose exec cvmfs-stratum0 bash
root@cvmfs-stratum0 # cvmfs_server mkfs ctao.dpps.test
root@cvmfs-stratum0 # cvmfs_server transaction
root@cvmfs-stratum0 # echo -e '#!/bin/bash\necho "Hello, World!"' > /cvmfs/ctao.dpps.test/hello-world
root@cvmfs-stratum0 # chmod +x /cvmfs/ctao.dpps.test/hello-world
root@cvmfs-stratum0 # cvmfs_server publish
```


Check on the client that everything is working:

```
user@host $ docker compose exec client bash
root@cvmfs-client # cvmfs_config probe
Probing /cvmfs/ctao.dpps.test... OK
root@cvmfs-client # /cvmfs/ctao.dpps.test/hello-world
Hello, World!
```
