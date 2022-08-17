#!/bin/sh
#update
apt update
apt upgrade

#perf
apt install build-essential
apt install flex bison
apt install zlib1g zlib1g-dev
apt install libelf-dev
apt install elfutils
apt install systemtap-sdt-dev
apt install libssl-dev
apt install libunwind
apt install libdw-dev
apt install libcap-dev
apt install libzstd-dev
apt install binutils-dev
apt install libiberty-dev
apt install zlib-static
apt install libslang2-dev
apt install libunwind-dev
apt install libperl-dev
apt install libnuma-dev
apt install libbabeltrace
apt install libbabeltrace-dev
apt install libbabeltrace-ctf-dev
apt install python-dev-is-python3

#fastdds
apt install cmake g++ python3-pip wget git
apt install libasio-dev libtinyxml2-dev

#java
apt install default-jdk

#other
apt install vim
apt install lrzsz
