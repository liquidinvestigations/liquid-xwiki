FROM xwiki:lts-postgres


COPY ./oidc-authenticator-15.10.14.xip /tmp/oidc-authenticator-15.10.14.xip
COPY ./xwiki-platform-distribution-flavor-xip-15.10.14.xip /tmp/xwiki-platform-distribution-flavor-xip-15.10.14.xip

RUN mkdir -p /usr/local/xwiki/data/extension/repository

# "{% raw %}${meta.liquid_volumes}{% endraw %}/xwiki/data:/usr/local/xwiki",

RUN unzip /tmp/oidc-authenticator-15.10.14.xip -d /usr/local/xwiki/data/extension/repository
RUN unzip /tmp/xwiki-platform-distribution-flavor-xip-15.10.14.xip -d /usr/local/xwiki/data/extension/repository

