# myprojects

The Dockerfile is used to build docker image with full required packages for Hands-On Assembly & Security labs. <br>
How to use:<br>
1. Install docker on your computer (host machine) <br>
2. Build the image "img4lab" that comprises all required packages for labs <br>
$> docker build -t img4lab .  												
3. Run container and map path on host machine to path inside the container <br>
for Assembly labs:<br>
$> docker run -it -v /home/seed/asm:/home/asm img4lab <br>
for Security labs:<br>
$> docker run -it -v /home/seed/seclabs:/home/seclabs img4lab <br>
   
