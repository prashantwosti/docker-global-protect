FROM alpine:3.13

LABEL Maintainer="Bhaskar KC <xlinkerz@gmai.com>"

LABEL 'com.github.actions.name'='Docker Deployment for global protect'
LABEL 'com.github.actions.icon'='send'
LABEL 'com.github.actions.color'='blue'

RUN apk --no-cache add bash openconnect openssl

COPY scripts/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh"]