# Docker Git Wiki

Docker image for git based wiki.

## Configuration

### First setup

You have to build the images in order to use it:

- Download it *duh* using `git clone git@gitlab.com:6go-srl/docker/git-wiki.git` or from the mirror on Github `git clone git@github.com:6GO-it/docker-git-wiki.git`
- Change the directory inside the cloned repository
- Create the first image by typing `docker build -t git-wiki .` or whatever name you desire

### Exposed port

By default the image exposes port `2370` and it bind that, you can change it if you need to

### Create a container

Once the image is ready just get into the folder of the wiki you want to edit and type `docker run --rm -it -v "$(pwd):/wiki" -p 4567:2370 git-wiki`

## Script folder

The script folder includes two example of docker run for Windows (`.bat`) and Unix (`.sh`)