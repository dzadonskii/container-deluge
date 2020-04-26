FROM debian:bullseye
RUN useradd -m -r -u 1000 deluge
RUN apt update && apt install -y deluge-web deluged && rm -rfv /var/cache/apt/
USER deluge
CMD ["/bin/bash","-c","/usr/bin/deluged -d & /usr/bin/deluge-web -d -L info"]
