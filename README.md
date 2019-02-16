This is my Dockerfile for ctf-pwn environment.

OS : ubuntu 18.04

Installed tools include : 
+ vim, git
+ objdump
+ nmap
+ python2, pip2, python3, pip3, ruby, gem
+ [pwntools](http://docs.pwntools.com/en/stable/) in Python2
+ [Pwngdb](https://github.com/scwuaptx/Pwngdb) by Angelboy
+ [one_gadget](https://github.com/david942j/one_gadget) by david942j

Usage : 
```
# build image from Dockerfile && run
# replace REPOSITORY and TAG with yours
git clone https://github.com/KennyTzeng/ctf_docker
cd ctf_docker
sudo docker build -t="REPOSITORY:TAG" .
docker run -it REPOSITORY:TAG

# some useful docker commands
## image
docker image ls -a
docker image rm IMAGE_ID
docker image prune
## container
docker container ls -a
docker container rm CONTAINER_ID
docker container prune
## upload image
sudo docker push REPOSITORY:TAG
```
