FROM dockerfile/java:oracle-java8
MAINTAINER Jeffrey Bird <jeff@jbird.org>

WORKDIR /app/lucee
RUN curl -Lo lucee.zip  https://bitbucket.org/lucee/lucee/downloads/lucee-4.5.1.000-express.zip && \
    unzip lucee.zip && rm -f lucee.zip

EXPOSE 8888 8009

CMD /app/lucee/bin/catalina.sh run
