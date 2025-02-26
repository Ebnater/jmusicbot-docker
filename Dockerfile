FROM adoptopenjdk/openjdk11-openj9

ARG VERSION

WORKDIR /opt/jmusicbot

ADD https://github.com/jagrosh/MusicBot/releases/download/0.4.3/JMusicBot-0.4.3.jar ./run.jar

ENV VERSION=$VERSION

CMD [ "java", "-jar", "run.jar" ]