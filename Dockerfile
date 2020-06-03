FROM ubuntu:latest
VOLUME ["/var/log/"]
RUN echo frist line >> /var/log/spring.log
CMD ["tail","-n+1","-f", "/var/log/spring.log"] 