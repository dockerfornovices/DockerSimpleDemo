# Basic system with Java development kit installed

# This material is free software for demonstration purposes only.

# Copyright (c) 2018 Alec Clews <alecclews@gmail.com>
#
# Use of this source code is governed by an MIT license.
# See the project's LICENSE file for more information.

FROM alpine

LABEL maintainer  "Alec Clews <alecclews@pgmail.com>"
LABEL description "Linux with JDK"

RUN apk update && \
    apk add openjdk8

# ENV PATH=${PATH}:/usr/lib/jvm/java-1.8-openjdk/bin  JAVA_HOME=/usr/lib/jvm-1.8-openjdk

CMD ["javac", "-version"]
