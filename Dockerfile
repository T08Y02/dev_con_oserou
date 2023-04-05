FROM python:3.8.10
ENV PYTHONUNBUFFERED 1
RUN apt-get update && \
   apt-get -y install sudo gcc libmariadb-dev nano vim lsof net-tools libgl1-mesa-dev
RUN pip install --upgrade pip
RUN mkdir /stablediffusion
WORKDIR /stablediffusion
ADD ./stdf/requirements.txt /stablediffusion/
RUN pip install -r requirements.txt
RUN mkdir /stablediffusion_rq
WORKDIR /stablediffusion_rq
ADD ./stdf/stable-diffusion/requirements.txt /stablediffusion_rq/
RUN pip install -r requirements.txt

WORKDIR /stable-diffusion
RUN pip install --upgrade transformers

#以下はイメージ起動後に実行
#cd stable-diffusion
#RUN pip install -e . 
