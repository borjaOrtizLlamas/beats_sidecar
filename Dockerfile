FROM ubuntu:latest
VOLUME ["/var/log/"]
CMD ["tail","-n+1","-f", "/var/log/spring.log"] 