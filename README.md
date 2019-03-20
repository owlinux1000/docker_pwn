# Docker Image for Pwn

## Environment

- `ubuntu:18.04`
  - So you change `FROM ubuntu:18.04` if you want to use other version
- `i386` and `amd64`
- `gdb`, `gdb-peda` and `Pwngdb`
- `socat`
- `rp++`
- `one_gadget`  and `seccomp-tools`

## How to use

```
$ docker build -t pwn:ubuntu1804 .
$ docker run -it --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" --name pwn pwn:ubuntu1804
```


