FROM python:3.7-slim
RUN sed -i "s@http://deb.debian.org@http://mirrors.aliyun.com@g" /etc/apt/sources.list
RUN  mkdir /app/ && apt -y update && \
     apt -y install gcc libffi-dev libssl-dev && \
     pip install --upgrade pip && pip install certbot certbot-dns-godaddy==0.2.0 cryptography==3.3.2 -i https://pypi.doubanio.com/simple
WORKDIR /app
COPY run.sh /app/

CMD ["sh", "/app/run.sh"]
