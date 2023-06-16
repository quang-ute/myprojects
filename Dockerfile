FROM 32bit/ubuntu:16.04
ARG DEBIAN_FRONTEND=noninteractive

# Install software packages inside the container
RUN apt-get update && \
	apt-get -y install \   
	zsh \
	nasm \
	gcc \
	gdb \
	python \
	git \  
    	nano && \
	apt-get clean

# Create user 
RUN useradd -m -s /bin/bash seed && \
	echo "root:dees" | chpasswd && \
	echo "seed:dees" | chpasswd && \
	usermod -aG sudo seed  

USER seed
WORKDIR /home/seed
#RUN mkdir asm
RUN mkdir seclabs
RUN git clone https://github.com/longld/peda.git ~/peda
RUN echo "source ~/peda/peda.py" >> ~/.gdbinit

# The command executed by the container after startup
CMD [ "/bin/bash"]

