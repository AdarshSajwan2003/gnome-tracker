# commands

## Build image
- `docker build -t gnome:main .`

## Duplicate image
- `docker tag gnome:main gnome-app`

## Create Process with Display and mount Folder
- `PROJECT=tracker && docker run -e DISPLAY=$DISPLAY -it --name $PROJECT -v /workspace/gnome-tracker/Projects:/Projects -v /tmp/.X11-unix/:/tmp/.X11-unix -w /Projects  gnome:main /bin/bash`

## See avilable images and process
- `docker images && docker ps -a`
## remove all images and proccess
- `docker rm -f $(docker ps -aq) && docker rmi -f $(docker images -q)`

## Start process
- `docker start gnome-app`

## Stop process
- `docker stop gnome-app`

## Enter into container [Running Process]
- `docker exec -it gnome-app /bin/bash`

# for gnome-terminal
- `dnf install -y libadwaita-devel vte291-gtk4-devel  && dnf builddep gnome-terminal -y` 
