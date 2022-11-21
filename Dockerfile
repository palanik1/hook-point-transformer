FROM ubuntu:latest

#install dependencies for codequery
RUN apt-get update && apt-get upgrade && apt-get dist-upgrade && apt-get install -y \ 
	build-essential \
	g++ \
	git \
	cscope \
	wget \
	python3 \
	python3-pip \
	coccinelle \
#add ebpf compilation tools
	clang \
	llvm \
	libelf-dev \
	libpcap-dev \
	gcc-multilib \
	build-essential \
	linux-tools-common \
	linux-tools-generic \
	tcpdump 

#install python dependencies
RUN python3 -m pip install scapy

#install txl
WORKDIR /root
RUN wget -O /tmp/txl.tgz  https://www.txl.ca/download/15372-txl10.8b.linux64.tar.gz
RUN tar -xvzf '/tmp/txl.tgz' --strip-components 1 --one-top-level=/root/deps/txl -C .
RUN ls /root
WORKDIR /root/deps/txl
RUN ./InstallTxl

#add transformation code 
WORKDIR /root
ADD src src
ADD asset asset
ADD examples examples
ADD verify verify
#RUN ./run.sh
