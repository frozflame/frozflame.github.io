Docker troubleshoot: permission denied
======================================

Got "permission denied" error while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock ...

Try this 

    sudo usermod -a -G docker $NAME