#!/usr/bin/env ruby

def info(s)
  puts "[\e[32m+\e[m] #{s}"
end

def warn(s)
  puts "[\e[31m!\e[m] #{s}"
end

SUPPORTED_VERSIONS = ["16.04", "18.04", "19.04", "22.04"]
if ARGV.length != 1 || !SUPPORTED_VERSIONS.include?(ARGV[0])
  puts "Usage: pwn <version>"
  puts "       Supported versions are 16.04, 18.04, 19.04, 22.04"
  exit(1)
end

version = ARGV[0]
dirname = File.basename(Dir.pwd)
cwd = Dir.pwd
port = {
  host: 9999,
  container: 8888
}

if `docker ps -a --format "{{.Names}}"`.split("\n").include?(dirname)
  warn "Already running same name container!"
  exit(1)
end

cmd = "docker run -it -v #{cwd}:/root/work --cap-add=SYS_PTRACE --security-opt=\"seccomp=unconfined\" --name #{dirname} -p #{port[:host]}:#{port[:container]} pwn:#{version}"
info "Image: encry1024/pwn:#{version}"
info "Container: #{dirname}"
info "Synced #{cwd}:/root/work"
info "Port: #{port[:host]} -> #{port[:container]}"
info "Command: #{cmd}"
exec(cmd)
