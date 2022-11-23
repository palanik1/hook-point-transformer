#Author: Sayandeep Sen (sayandes@in.ibm.com)
#Author: Palani Kodeswaran (palani.kodeswaran@in.ibm.com)

FROM ubuntu:latest

#install dependencies for codequery
#RUN apt-get update -y 
#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
#RUN apt-get install software-properties-common -y 
#RUN add-apt-repository 'deb http://ubuntu.mirrors.tds.net/ubuntu impish universe'
#RUN apt-get update


RUN apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y \ 
	build-essential \
	apt-utils \
	linux-tools-common \
	linux-tools-generic \
    	linux-cloud-tools-generic \
	iproute2 \
	g++ \
	git \
	cscope \
	wget \
	python3 \
	python3-pip \
	sudo \
#add ebpf compilation tools
	clang \
	llvm \
	libelf-dev \
	libpcap-dev \
	gcc-multilib \
	tcpdump \
	coccinelle 

#install python dependencies
RUN python3 -m pip install scapy

#install txl
WORKDIR /root
RUN wget -O /tmp/txl.tgz  https://www.txl.ca/download/15372-txl10.8b.linux64.tar.gz
RUN tar -xvzf '/tmp/txl.tgz' --strip-components 1 --one-top-level=/root/deps/txl -C .
RUN rm /tmp/txl.tgz
RUN ls /root
WORKDIR /root/deps/txl
RUN ./InstallTxl

#add transformation code 
WORKDIR /root
ADD src src
ADD asset asset
ADD dep dep
ADD examples examples
ADD verify verify
ADD run.sh run.sh
#RUN ./run.sh
