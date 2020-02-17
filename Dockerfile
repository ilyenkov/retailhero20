FROM ubuntu

RUN apt -y update
RUN apt-get clean && apt-get update && apt-get install -y locales
RUN apt -y install build-essential libpcre3-dev python3 python3-pip curl zip unzip swig wget

RUN echo "ru_RU.UTF-8 UTF-8" > /etc/locale.gen && locale-gen
ENV LANG ru_RU.UTF-8

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN pip3 install -U numpy scipy sklearn pandas catboost lightgbm matplotlib tqdm gunicorn~=20.0.4 Flask~=1.1.1 requests~=2.22.0
