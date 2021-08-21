# myprojects

The Dockerfile is used to build docker image with full required packages for Hands-On Assembly & Security labs. <br>
How to use:<br>
1. Install docker on your computer (host machine) <br>
2. $> docker build -t nasm .  &emsp // to build docker image with all required packages for labs. nasm is the name of this image. <br>
3. $> docker run -it -v /home/seed/asm:/home/asm nasm // to start container from image nasm, maps /home/asm on your host machine to path /home/seed/asm on docker container, any changes there will be committed to the host machine.  
