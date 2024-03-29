ARG VERSION=4.2.12-1

FROM graylog/graylog:${VERSION}
USER root

ARG VERSION=4.2.12-1
# https://github.com/Graylog2/graylog-plugin-auth-sso
ARG VERSION_SSO=3.3.0
# https://github.com/GDATASoftwareAG/Graylog-Plugin-AlertManager-Callback
ARG VERSION_ALERTMANAGER=1.2.2

ENV PLUGIN_PATH=/usr/share/graylog/plugin

RUN set -xe \
  && apt-get update \
  && apt-get install -y wget

# SSO
RUN set -xe \ 
  wget -qO \
  ${PLUGIN_PATH}/graylog-plugin-auth-sso-${VERSION_SSO}.jar \
  https://github.com/Graylog2/graylog-plugin-auth-sso/releases/download/${VERSION_SSO}/graylog-plugin-auth-sso-${VERSION_SSO}.jar

# ALERTMANAGER
RUN set -xe \
  && wget -qO \
  ${PLUGIN_PATH}/graylog-plugin-alertmanagercallback-${VERSION_ALERTMANAGER}.jar \
  https://github.com/GDATASoftwareAG/Graylog-Plugin-AlertManager-Callback/releases/download/${VERSION_ALERTMANAGER}/graylog-plugin-alertmanagercallback-${VERSION_ALERTMANAGER}.jar

RUN set -xe \
  && chown -R graylog:graylog ${PLUGIN_PATH}/*

USER graylog

LABEL ru.sdelka-rf.maintainer="jidckii@gmail.com"
LABEL ru.sdelka-rf.version.alertmanager=${VERSION_ALERTMANAGER}
LABEL ru.sdelka-rf.version.graylog=${VERSION}
LABEL ru.sdelka-rf.version.sso=${VERSION_SSO}
