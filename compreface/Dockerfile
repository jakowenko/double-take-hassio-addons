FROM exadel/compreface:0.6.1
ENV PGDATA=/data/pgsql
RUN rm /etc/postgresql/13/main/postgresql.conf
COPY postgresql.conf /etc/postgresql/13/main/postgresql.conf
COPY wrapper.sh /wrapper.sh
CMD ["/wrapper.sh"]
