FROM openjdk:11

ARG VERSION

WORKDIR /opt/jmusicbot

ADD https://github.com/jagrosh/MusicBot/releases/download/${VERSION}/JMusicBot-${VERSION}.jar ./run.jar

CMD [ "java", "-jar", "run.jar" ]