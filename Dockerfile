FROM ubuntu:22.04

#ENV http_proxy $http_proxy
#ENV https_proxy $http_proxy

LABEL maintainer="encry1024@gmail.com"

RUN dpkg --add-architecture i386 && \
    apt update -y \
    && apt upgrade -y \
    && apt install -y socat gdb gdb-multiarch libc6-dbg libc6-dbg:i386 git binutils gcc-multilib g++-multilib curl wget make libssl-dev build-essential ruby ruby-dev netcat tmux nasm ltrace strace vim
RUN wget -q https://raw.githubusercontent.com/bata24/gef/dev/install.sh -O- | sh
RUN gem install one_gadget seccomp-tools pwntools
RUN wget https://raw.githubusercontent.com/owlinux1000/pwncat/master/pwncat -O /usr/local/bin/pwncat && chmod +x /usr/local/bin/pwncat

RUN mkdir ~/work
WORKDIR /root/work

EXPOSE 9999

ENTRYPOINT ["/bin/bash"]
