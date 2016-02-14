#!/usr/bin/env bash

CATALINA_OPTS_JVM=" \
  -Xms2g -Xmx4g -server -XX:NewSize=256m -XX:MaxNewSize=512m -XX:+DisableExplicitGC \
  -Dfile.encoding=UTF-8 -Djava.awt.headless=true \
"
CATALINA_OPTS_JMX=" \
  -Dcom.sun.management.jmxremote \
  -Dcom.sun.management.jmxremote.port=9095 \
  -Dcom.sun.management.jmxremote.ssl=false \
  -Dcom.sun.management.jmxremote.authenticate=false \
  -Dcom.sun.management.jmxremote.password.file=conf/jmxremote.password \
  -Dcom.sun.management.jmxremote.access.file=conf/jmxremote.access \
"
CATALINA_OPTS_LOG=" \
  -Dlogback-lib.env=filesystem \
  -DlocalLogging=true \
  -Dlogback-lib.env=filesystem \
"
CATALINA_OPTS_NFOSS=" \
  -Dcom.netflix.karyon.eureka.datacenter.type=Cloud \
  -Darchaius.deployment.region=US_WEST_2 \
  -Darchaius.deployment.domain=default \
  -Deureka.datacenter=default \
  -Dovation.app.properties.location=ws-config/ovation/ovation-local-overlay.properties \
  -Dapplication.home=/Users/cboggs1 \
  -Daesd.archaius.dynamic.url=classpath:///config.properties \
"
CATALINA_OPTS_ENV_LOCAL=" \
-Darchaius.deployment.environment=local \
-Deureka.environment=local \
"
CATALINA_OPTS_ENV_DEV=" \
-Darchaius.deployment.environment=dev \
-Deureka.environment=dev \
"

export CUSTOM_CATALINA_OPTS=" \
  ${CATALINA_OPTS_JVM} \
  ${CATALINA_OPTS_JMX} \
  ${CATALINA_OPTS_LOG} \
  ${CATALINA_OPTS_NFOSS} \
  ${CATALINA_OPTS_ENV_LOCAL} \
"
