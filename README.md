# Docker Image for my pwn stuff

## Installed Tools

- Debugger
  - gdb(gdb-multiarch), gdb-peda and Pwngdb
  - [gef](https://github.com/bata24/gef) forked by `bata24`
- Analysis Tools
  - ltrace, strace
  - rp-lin (gcc)
  - one_gadget
  - seccomp-tools
- General Tools
  - tmux
  - vim
  - wget
  - curl
  - gcc, g++
  - socat, netcat, pwncat

## How to use

1. Build the container image
   ```
   $ docker build -t pwn:22.04 .
   ```
2. Start the container
   ```
   $ ./pwn 22.04
   ```
