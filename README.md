# Docker Git Wiki Image

This simple docker image will allow you to edit any Git wiki you want.

## How to use

In order to use this image you have to

- Download it *duh* using `git clone git@gitlab.com:6go-srl/docker/git-wiki.git`
- Change the directory inside the cloned repository
- Create the first image by typing `docker build -t git-wiki .`
- Once the image is ready just get into the folder of the wiki you want to edit and type `docker run --rm -it -v "$(pwd):/wiki" -p 4567:2370 git-wiki`

## Script folder

The script folder includes two example of docker run for Windows (.bat) and Unix (.sh)