FROM alpine

LABEL "com.github.actions.name"="Github Action for SG"

RUN apk add --no-cache curl ca-certificates

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"] 
CMD ["--help"]
