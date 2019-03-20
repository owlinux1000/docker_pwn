# Docker Image for Pwn

## Environment

- ubuntu:18.04
  - So you change `FROM ubuntu:18.04` if you want to use other version

## Installed Tools

- Debugger
  - gdb(gdb-multiarch), gdb-peda and Pwngdb
  - gef (However the default configuration enables gdb-peda)
  - radare2
- Analysis Tools
  - ltrace, strace
  - rp++
  - one_gadget
  - seccomp-tools
- General Tools
  - tmux
  - vim
  - wget
  - curl
  - gcc, g++
  - socat, netcat

## How to use

```
$ docker build -t pwn:ubuntu1804 .
$ docker run -it -p 8888:8888 --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" --name pwn pwn:ubuntu1804
```

## Contributor

If you want to add some tools and packages, please feel free to pull-request :+1:
