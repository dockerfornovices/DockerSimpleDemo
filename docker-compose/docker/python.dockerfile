FROM python:3-slim-buster

COPY requirements.txt .

RUN pip install -r requirements.txt  && useradd -m developer

WORKDIR /development

USER developer

CMD ["/bin/bash"]
