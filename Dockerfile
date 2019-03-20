FROM ubuntu:18.04

#ENV http_proxy $http_proxy
#ENV https_proxy $http_proxy

LABEL maintainer="encry1024@gmail.com"

RUN dpkg --add-architecture i386 && \
    apt update -y \
    && apt upgrade -y \
    && apt install -y socat gdb gdb-multiarch libc6-dbg libc6-dbg:i386 git binutils gcc-multilib g++-multilib curl wget make libssl-dev build-essential ruby ruby-dev radare2 netcat tmux nasm ltrace strace vim 
RUN git clone https://github.com/scwuaptx/peda ~/peda \
    && git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb \
    && cp ~/Pwngdb/.gdbinit ~/ \
    && mkdir ~/gef && wget https://github.com/hugsy/gef/raw/master/gef.py -O ~/gef/gef.py
RUN wget https://github.com/0vercl0k/rp/releases/download/v2-beta/rp-lin-x64 -O /usr/local/bin/rp++ && chmod +x /usr/local/bin/rp++
RUN gem install one_gadget seccomp-tools

EXPOSE 8888

ENTRYPOINT ["/bin/bash"]
