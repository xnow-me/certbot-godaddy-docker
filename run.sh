#echo certbot_dns_dnspod:dns_dnspod_api_id = \"${DNSPOD_API_ID}\" > /app/dnspod-credential.txt 
#echo certbot_dns_dnspod:dns_dnspod_api_token = \"${DNSPOD_API_TOKEN}\" >> /app/dnspod-credential.txt

echo dns_godaddy_secret = \"${GODADDY_SECRET}\" > /app/godaddy-credential.txt
echo dns_godaddy_key = \"${GODADDY_KEY}\" >> /app/godaddy-credential.txt

chmod 600 /app/godaddy-credential.txt

certbot certonly --authenticator dns-godaddy  \
    --dns-godaddy-credentials /app/godaddy-credential.txt \
    --dns-godaddy-propagation-seconds 30 \
    --keep-until-expiring --non-interactive --expand \
    --server https://acme-v02.api.letsencrypt.org/directory \
    --register-unsafely-without-email \
    --agree-tos \
    -d ${DOMAIN} \
    --preferred-chain "ISRG Root X1"
