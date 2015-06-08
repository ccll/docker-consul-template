FROM gliderlabs/alpine:3.1

ADD https://github.com/ccll/consul-template/releases/download/v0.7.0-1/consul-template /usr/local/bin/consul-template

ENTRYPOINT ["/usr/local/bin/consul-template"]
CMD ["-h"]
