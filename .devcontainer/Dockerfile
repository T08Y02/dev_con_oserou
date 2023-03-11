FROM python:3
ENV PYTHONUNBUFFERED 1
RUN apt-get update && \
   apt-get -y install sudo gcc libmariadb-dev nano vim lsof net-tools
RUN apt-get install -y mariadb-client
RUN mkdir /oserou
WORKDIR /oserou
ADD .devcontainer/requirements.txt /oserou/
RUN pip install -r requirements.txt
ADD . /oserou/
