FROM mongo:4

RUN useradd -m developer

WORKDIR /development

USER developer

CMD ["/bin/bash"]
