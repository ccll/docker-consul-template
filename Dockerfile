FROM gliderlabs/alpine:3.1

ENV VERSION 0.7.0

ADD https://github.com/hashicorp/consul-template/releases/download/v${VERSION}/consul-template_${VERSION}_linux_amd64.tar.gz /tmp/consul-template.tar.gz
RUN cd /tmp && tar xzf consul-template.tar.gz
RUN mv tmp/consul-template_${VERSION}_linux_amd64/consul-template /usr/local/bin/consul-template
RUN cd /tmp && rm -rf /tmp/*

CMD ["consul-template", "-h"]
