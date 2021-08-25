# myprojects

The Dockerfile is used to build docker image with full required packages for Hands-On Assembly & Security labs. <br>
How to use:<br>
1. Install docker on your computer (host machine) <br>
2. Build the image with: <br>
$> docker build -t nasm .  												// to build docker image with all required packages for labs. nasm is the name of this image. Remember to replace **nasm** with **seed** for security labs
3. Run container and map path on host machine to path inside the container <br>
for Assembly labs:<br>
$> docker run -it -v /home/seed/asm:/home/asm nasm <br>
for Security labs:<br>
$> docker run -it -v /home/seed/seclabs:/home/seclabs seed <br>
   
