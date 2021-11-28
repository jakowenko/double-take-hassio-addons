ARG BUILD_FROM
FROM $BUILD_FROM
RUN apt-get install jq -y
COPY run.sh /
ENTRYPOINT ["/run.sh"]