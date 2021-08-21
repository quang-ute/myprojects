FROM 32bit/ubuntu:16.04
ARG DEBIAN_FRONTEND=noninteractive

# Install software packages inside the container
RUN apt-get update && \
	apt-get -y install \  
	iputils-ping \ 
	nasm \
	gcc \
	zsh \
	gdb \
	git \  
	nano && \
	apt-get clean

# Put file inside the container
RUN useradd -m -s /bin/bash seed && \
	echo "root:dees" | chpasswd && \
	echo "seed:dees" | chpasswd && \
	usermod -aG sudo seed && \ 
	mkdir /home/seed/seclabs
	
USER seed
WORKDIR /home/seed
RUN git clone https://github.com/longld/peda.git ~/peda
RUN echo "source ~/peda/peda.py" >> ~/.gdbinit

# The command executed by the container after startup
CMD [ "/bin/bash"]

