Docker: permission denied connecting to daemon unix socket
==================================================

Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: ...

Try this 

    sudo usermod -a -G docker $NAME