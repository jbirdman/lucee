FROM java:8
MAINTAINER Jeffrey Bird <jeff@jbird.org>

ENV LUCEE_VERSION=5.0.0.49

WORKDIR /app/lucee
RUN curl -Lo lucee.zip  https://bitbucket.org/lucee/lucee/downloads/lucee-$LUCEE_VERSION-express.zip && \
    unzip lucee.zip && rm -f lucee.zip

EXPOSE 8888 8009

CMD /app/lucee/bin/catalina.sh run
