FROM centos:centos7

RUN yum -y update
RUN yum -y install wget tar gcc make
RUN wget http://www.circlemud.org/pub/CircleMUD/3.x/circle-3.1.tar.gz
RUN tar xvf circle-3.1.tar.gz
WORKDIR circle-3.1
RUN ./configure
WORKDIR src
RUN make

CMD ["/usr/bin/tail", "-f", "/circle-3.1/README"]

