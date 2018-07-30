FROM haproxy:1.5.19

#Set Confd Version 
ENV CONFD_VERSION 0.16.0

RUN apt-get update \
		&& apt-get install -y wget

#Install Confd
RUN wget https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 \
		&& mv confd-${CONFD_VERSION}-linux-amd64 /bin/confd \
		&& chmod +x /bin/confd

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
