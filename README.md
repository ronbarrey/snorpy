# Snorpy
[Snorpy](https://github.com/chrisjd20/Snorpy) is a simple Snort rule creator/builder/maker made with with Node and jquery.

#### Docker Install

    sudo apt-get update && sudo apt-get install docker.io
    
###### Post Installation Steps

Create Docker group

    sudo groupadd docker

Add user to group (logoff required)

    sudo usermod -aG docker $USER

Enable Docker service during boot (reboot required)
    
    sudo systemctl enable docker

#### Build Snorpy Image

    docker build -t snorpy .
    
#### Run Snorpy Image

    docker run -d -p 8080:8080 snorpy

