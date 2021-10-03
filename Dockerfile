FROM python:3.7-slim
RUN mkdir /app && pip install certbot certbot-dns-godaddy
WORKDIR /app
COPY run.sh /app/

CMD ["sh", "/app/run.sh"]
