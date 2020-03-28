FROM internxt/xcore
LABEL MAINTAINER=Internxt<hello@internxt.com>


COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
RUN chmod +x /root/start.sh

VOLUME [ "/root/.xcore" ]
EXPOSE 45555

ENTRYPOINT [ "/docker-entrypoint.sh" ]
