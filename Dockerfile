FROM python:2.7.8

RUN apt-get update
RUN apt-get -y install git zlib1g-dev libjpeg-dev libpng12-dev libfreetype6-dev freetype2-demos mysql-client libmysqlclient-dev python-dev python-mysqldb python-pip wget vim python-imaging

WORKDIR /home
RUN git clone https://xujialiang:xjl037106283@github.com/xujialiang/LightCommunity.git
WORKDIR /home/LightCommunity
RUN pip install -r requirements.txt
WORKDIR /home/LightCommunity

EXPOSE 80

CMD [ "python","/home/LightCommunity/application.py"]