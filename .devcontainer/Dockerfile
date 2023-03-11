FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /oserou
WORKDIR /oserou
ADD .devcontainer/requirements.txt /oserou/
RUN pip install -r requirements.txt
ADD . /oserou/
