# ubuntu 18.04 base
FROM ubuntu:18.04

MAINTAINER KennyTseng

RUN apt update
RUN apt install -y vim git net-tools nmap gdb python python3 python-pip python3-pip ruby
RUN cd ~/ && git clone https://github.com/scwuaptx/peda && git clone https://github.com/scwuaptx/Pwngdb && cp ~/Pwngdb/.gdbinit ~/
RUN pip install pwntools
RUN gem install one_gadget

CMD ["/bin/bash"]
