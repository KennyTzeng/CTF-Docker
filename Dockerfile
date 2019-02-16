# ubuntu 18.04 base
FROM ubuntu:18.04

MAINTAINER KennyTseng

# global variable for Dockerfile
ENV USERNAME ga

# run as root
RUN groupadd $USERNAME && useradd -m -g $USERNAME $USERNAME
RUN apt update
RUN apt install -y vim git net-tools nmap gdb python python3 python-pip python3-pip ruby
RUN pip install pwntools
RUN gem install one_gadget

# run as user
USER $USERNAME
WORKDIR /home/$USERNAME
RUN git clone https://github.com/scwuaptx/peda && git clone https://github.com/scwuaptx/Pwngdb && cp ~/Pwngdb/.gdbinit ~/
RUN bash -c "echo -e ':set number\n:set tabstop=4' > ~/.vimrc"

