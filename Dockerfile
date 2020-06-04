FROM ubuntu:latest
VOLUME ["/var/log/"]
CMD ["echo","frist line",">>","/var/log/spring.log","&&","tail","-n+1","-f", "/var/log/spring.log"] 