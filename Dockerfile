FROM xwiki:lts-postgres

RUN apt-get update && apt-get install -y postgresql-client

COPY ./oidc-authenticator-15.10.14.xip /tmp/oidc-authenticator-15.10.14.xip
COPY ./xwiki-platform-distribution-flavor-xip-15.10.14.xip /tmp/xwiki-platform-distribution-flavor-xip-15.10.14.xip
COPY ./xwikidump /tmp/xwikidump

RUN mkdir -p /tmp/repository && unzip /tmp/oidc-authenticator-15.10.14.xip -d /tmp/repository && unzip /tmp/xwiki-platform-distribution-flavor-xip-15.10.14.xip -d /tmp/repository && rm /tmp/oidc-authenticator-15.10.14.xip && rm /tmp/xwiki-platform-distribution-flavor-xip-15.10.14.xip

