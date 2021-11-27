ARG BUILD_FROM
FROM $BUILD_FROM


ENV MB_KEY="ZjcwZmRmZGY5YzdmN2VhNGI0MzY1ZTllZTYxN2Q5OTQ.lvdI810vzV-h_RlXJu6TLweuJmKsJHYVY9pYc1bLh1vbW0oS_MIO5TI-hF_v9MLfGSgy6E0ombv7soaYy5coBw"
ARG MB_KEY="ZjcwZmRmZGY5YzdmN2VhNGI0MzY1ZTllZTYxN2Q5OTQ.lvdI810vzV-h_RlXJu6TLweuJmKsJHYVY9pYc1bLh1vbW0oS_MIO5TI-hF_v9MLfGSgy6E0ombv7soaYy5coBw"

ENV LANG C.UTF-8
 

RUN mkdir -p /sinisa
COPY run.sh /sinisa
 
RUN chmod +x /sinisa/run.sh
RUN /sinisa/run.sh
CMD ["sh", "/sinisa/run.sh"]