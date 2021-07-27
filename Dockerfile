FROM alpine:latest

COPY j2m-lnx64 .
#If you need to expose a port
#EXPOSE 8080

CMD ["./j2m-lnx64"]
