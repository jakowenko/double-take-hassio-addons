FROM exadel/compreface:1.2.0
ENV PGDATA=/data/database
RUN apt-get update && apt-get install jq -y && rm -rf /var/lib/apt/lists/*
COPY postgresql.conf /etc/postgresql/13/main/postgresql.conf
COPY run.sh /
CMD ["/run.sh"]
