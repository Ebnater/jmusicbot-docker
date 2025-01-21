FROM adoptopenjdk/openjdk11-openj9

ARG VERSION

WORKDIR /opt/jmusicbot

ADD https://github.com/jagrosh/MusicBot/releases/download/0.4.3/JMusicBot-0.4.3.jar ./run.jar

#COPY docker-entrypoint.sh ./
#RUN chmod +x docker-entrypoint.sh
#RUN mkdir /opt/jmusicbot/config

#VOLUME [ "/opt/jmusicbot/config" ]

ENV VERSION=$VERSION

#ENTRYPOINT [ "./docker-entrypoint.sh" ]
CMD [ "java", "-jar", "run.jar" ]