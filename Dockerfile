FROM xwiki:16-postgres-tomcat

RUN apt-get update && apt-get install -y postgresql-client nginx

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

COPY oidc-authenticator-16.10.5.xip /tmp/oidc-authenticator-16.10.5.xip
COPY xwiki-platform-distribution-flavor-xip-16.10.5.xip /tmp/xwiki-platform-distribution-flavor-xip-16.10.5.xip
COPY xwikidump /tmp/xwikidump

RUN mkdir -p /tmp/repository && unzip /tmp/oidc-authenticator-16.10.5.xip -d /tmp/repository && unzip /tmp/xwiki-platform-distribution-flavor-xip-16.10.5.xip -d /tmp/repository && rm /tmp/oidc-authenticator-16.10.5.xip && rm /tmp/xwiki-platform-distribution-flavor-xip-16.10.5.xip

