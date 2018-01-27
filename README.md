## do not start novnc

## Run it
    docker run -d -it -v "$PWD":/src -e VNC_PASSWORD=yourpassword -e XFB_SCREEN_DPI=yourdpi  -p 5900:5900 -p 5901:5901 --name     yourname sukeyisme/wine-x11-novnc-docker
    
## Connect it
run vnc to connect ,for example mac,go to finder then connect to server: vnc://yourserverip

## tip
if you have multi desktop ,you sould more port,like 5902 for second desktop.
