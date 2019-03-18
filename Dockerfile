FROM ubuntu:18.04

LABEL maintainer="encry1024@gmail.com"

RUN apt update -y \
    && apt upgrade -y \
    && apt install -y socat gdb libc6-dbg gcc-multilib git binutils gcc-multilib g++-multilib \
    && git clone https://github.com/scwuaptx/peda ~/peda \
    && git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb \
    && cp ~/Pwngdb/.gdbinit ~/
