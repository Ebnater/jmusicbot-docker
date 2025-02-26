FROM openjdk:11

ARG VERSION
ENV VERSION=$VERSION

WORKDIR /opt/jmusicbot

ADD https://github.com/jagrosh/MusicBot/releases/download/0.4.3/JMusicBot-0.4.3.jar ./run.jar

CMD [ "java", "-jar", "run.jar" ]