# myprojects

The Dockerfile is used to build docker image with full required packages for Hands-On Assembly & Security labs. <br>
How to use:<br>
1. Install docker on your computer (host machine) <br>
2. Build the image "img4lab" that comprises all required packages for labs <br>
$> docker build -t img4lab .  												
3. Run the containers and map path on host machine to path inside the container <br>
for Assembly labs (replace /home/asm with path on the student's host machine):<br>
$> docker run -it -v /home/seed/asm:/home/asm img4lab <br>
for Security labs (replace /home/security with path on the student's host machine):<br>
$> docker run -it -v /home/seed/seclabs:/home/security img4lab <br>
   
