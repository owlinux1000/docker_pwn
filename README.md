# Docker Image for Pwn

## Environment

- ubuntu:19.04
  - So you change `FROM ubuntu:19.04` if you want to use other version

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
  - socat, netcat, pwncat

## How to use


### Build by yourself
```
$ docker build -t pwn:19.04 .
$ docker run -it -v (pwd):/root/work -p 9999:8888 --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" --name pwn pwn:19.04
```

### Docker pull from Docker Hub

```
$ docker pull encry1024/pwn:19.04 # 19.04 or 18.04 or 16.04
```

### An useful script

```
$ ./pwn 18.04 # Easy to run this container
```

## Contributor

If you want to add some tools and packages, please feel free to pull-request :+1:
