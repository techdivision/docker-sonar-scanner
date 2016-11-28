FROM java:8-alpine

ENV SONAR_SCANNER_VERSION=2.8 \
    SONAR_SCANNER_HOME=/opt/sonar-scanner

RUN set -x \
  && apk add --no-cache curl \
  && curl -fsSLO https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-${SONAR_SCANNER_VERSION}.zip \
  && unzip sonar-scanner-${SONAR_SCANNER_VERSION}.zip \
  && mkdir /opt \
  && mv sonar-scanner-$SONAR_SCANNER_VERSION $SONAR_SCANNER_HOME \
  && rm sonar-scanner-${SONAR_SCANNER_VERSION}.zip \
  && rm -rf $SONAR_SCANNER_HOME/bin/*.bat \
  && ln -s $SONAR_SCANNER_HOME/bin/sonar-runner /usr/bin/sonar-runner\
  && ln -s $SONAR_SCANNER_HOME/bin/sonar-scanner /usr/bin/sonar-scanner \
  && ln -s $SONAR_SCANNER_HOME/bin/sonar-scanner-debug /usr/bin/sonar-scanner-debug \
  && apk del curl
