# Basic system with Java development kit installed

FROM debian

LABEL maintainer  "Alec Clews <alec.clews@papercut.com>"
LABEL description "Linux with JDK"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --yes \
  openjdk-8-jdk

ENTRYPOINT ["/bin/bash", "-c", "javac -version"]

