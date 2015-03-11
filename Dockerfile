FROM gliderlabs/alpine:3.1

ENV VERSION 0.7.0-1

RUN apk update && apk-install wget && \
    cd /tmp && \
    wget --no-check-certificate https://github.com/ccll/consul-template/releases/download/v${VERSION}/consul-template_${VERSION}_linux_amd64.tar.gz && \
    tar xzf consul-template_${VERSION}_linux_amd64.tar.gz && \
    mv consul-template_${VERSION}_linux_amd64/consul-template /usr/local/bin/consul-template && \
    rm -rf /tmp/*

ENTRYPOINT ["/usr/local/bin/consul-template"]
CMD ["-h"]
