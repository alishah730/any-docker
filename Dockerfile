FROM alixray.jfrog.io/docker/centos:8
RUN dnf module install nodejs:14 -y
RUN npm -g i ssri
RUN npm install -g npm
RUN npm install -g node-forge ssri tar
RUN yum update -y
RUN yum upgrade -y
RUN node -v

CMD ["/usr/sbin/init"]