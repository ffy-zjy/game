FROM amazonlinux:2

WORKDIR /root/

COPY server_demo server_demo

COPY conf.toml conf.toml

COPY entrypoint.sh entrypoint.sh

COPY caidan.sh caidan.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]