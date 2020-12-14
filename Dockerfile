FROM alpine:latest

RUN apk --update \
    add git lighttpd && \
    rm -rf /var/cache/apk/*

ADD lighttpd.conf /etc/lighttpd/lighttpd.conf
RUN adduser www-data -G www-data -H -s /bin/false -D && \
    git clone https://github.com/mattgodbolt/jsbeeb.git && \
    mv /jsbeeb/* /var/www/

EXPOSE 80
VOLUME /var/www/discs

ENTRYPOINT ["/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

