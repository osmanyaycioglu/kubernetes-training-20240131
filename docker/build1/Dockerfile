FROM alpine:latest
LABEL authors="os2ma"

RUN apk update
RUN apk add mc

WORKDIR /osman
COPY myfile.txt xyz.txt

ENTRYPOINT ["sh"]