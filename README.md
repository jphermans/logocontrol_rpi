# logocontrol_rpi
# Siemens LogoControl for Raspberry Pi 4

This version is for the raspberry PI4 and is fully working. So it's possible to control your Siemens LOGO plc from a web browser. I am not the official developer of this software but if you want more info concerning this then you can always visit the following site http://www.frickelzeugs.de. To run the container use following command:

sudo docker run -d --name logocontrol -p 8080:80 -v /path-to/logocontrol:/opt/LogoControl/data jphermans/logocontrol:latest

