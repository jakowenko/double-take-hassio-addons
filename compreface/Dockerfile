FROM exadel/compreface:0.6.1
ENV PGDATA=/data/database
RUN rm /etc/postgresql/13/main/postgresql.conf
COPY postgresql.conf /etc/postgresql/13/main/postgresql.conf
COPY run.sh /
CMD ["/run.sh"]