# myprojects
Useful projects, exercises and solutions for the students
The Dockerfile is used to generate docker image with full packages for hand-on Assembly & Security labs
How to use:
1. Install docker on your computer (host machine)
2. $> docker build -t nasm .                          // to build docker image with all required packages for labs. nasm is the name of this image. 
3. $> docker run -it -v /home/seed/asm:/home/asm nasm // to start container from image nasm, maps /home/asm on your host machine to path /home/seed/asm on docker container, any changes there will be committed to the host machine.  
