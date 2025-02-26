FROM openjdk:11

ARG VERSION
ENV VERSION=$VERSION

WORKDIR /opt/jmusicbot

ADD https://github.com/jagrosh/MusicBot/releases/download/${VERSION_DOCKER}/JMusicBot-${VERSION_DOCKER}.jar ./run.jar

CMD [ "java", "-jar", "run.jar" ]