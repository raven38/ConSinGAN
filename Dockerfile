FROM pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-devel

RUN apt-get update && apt-get -y install libopencv-dev  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ADD requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

ENV HOME /home/
WORKDIR /home
