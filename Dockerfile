FROM ubuntu:18.04

#ENV http_proxy $http_proxy
#ENV https_proxy $http_proxy

LABEL maintainer="encry1024@gmail.com"

RUN dpkg --add-architecture i386 && \
    apt update -y \
    && apt upgrade -y \
    && apt install -y socat gdb libc6-dbg libc6-dbg:i386 git binutils gcc-multilib g++-multilib wget\
    && git clone https://github.com/scwuaptx/peda ~/peda \
    && git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb \
    && cp ~/Pwngdb/.gdbinit ~/ \
    && wget https://github.com/0vercl0k/rp/releases/download/v2-beta/rp-lin-x64 -O /usr/local/bin/rp && chmod +x /usr/local/bin/rp
