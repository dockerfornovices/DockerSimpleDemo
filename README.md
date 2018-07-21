# A simple one intro to Docker for novices

These files support a short talk by @alecthegeek to introduce junior developers
and other novices to Docker concepts and basic commands.

Slides at https://docs.google.com/presentation/d/e/2PACX-1vSRoX14YwhCvBK4PSgfIrPxM67EUM7ZY7IcK9J24gn7wI-HgNA5Z_7IAc5nLHTGYpOSkx59R1UYxXmC/pub

NOTE: This repo does not follow best pratices. It's just a bunch of simple
files to allow me to show some demos during the talk

* `setup` -- remove some images so demos work correctly. Run before starting talk
* `index.html` -- demo file for bind mount when running Nginx, from https://github.com/BretFisher/udemy-docker-mastery/blob/master/dockerfile-sample-2/index.html
* `jdk.dockerfile` -- simple docker file to install the JDK
* `docker-compose.yml` -- example Compose file from https://github.com/BretFisher/udemy-docker-mastery/blob/master/compose-sample-1/compose-3.yml
* `shell2Moby` -- get a shell prompt on the Docker host mashine for demo purposes. See https://www.bretfisher.com/docker-for-mac-commands-for-getting-into-local-docker-vm/

Special Thanks to @BretFisher for most of the examples, taken from his
[Docker Mastery](https://www.udemy.com/docker-mastery/?couponCode=2018DOCKERMASTERY301) course

