# Basic system with Java development kit installed

# This material is free software for demonstration purposes only.

# Copyright (c) 2018 PaperCut Software International Pty. Ltd.
#  https://www.papercut.com
#
# Use of this source code is governed by an MIT license.
# See the project's LICENSE file for more information.

FROM debian

LABEL maintainer  "Alec Clews <alec.clews@papercut.com>"
LABEL description "Linux with JDK"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --yes \
  openjdk-8-jdk

CMD ["javac", "-version"]
