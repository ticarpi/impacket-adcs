FROM python:3.8-alpine as compile
WORKDIR /opt
RUN apk add --no-cache git gcc musl-dev python3-dev libffi-dev openssl-dev cargo
ADD . /opt/impacket
WORKDIR /opt/impacket
RUN python3 -m pip install -r requirements.txt
RUN python3 setup.py install
WORKDIR /opt/impacket/examples
ENTRYPOINT ["python3"]
