# Docker Image for Pwn

## Environment

- `ubuntu`
- `i386` and `amd64`
- `gdb`, `gdb-peda` and `Pwngdb`
- `socat`
- `rp++`

## How to use

```
$ docker build -t pwn:ubuntu1804 .
$ docker run -it --cap-add=SYS_PTRACE --security-opt="seccomp=unconfined" --name pwn pwn:ubuntu1804 /bin/bash
```


