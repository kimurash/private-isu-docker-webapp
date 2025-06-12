FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        percona-toolkit \
        default-mysql-client \
        git \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

COPY query-digester /usr/local/bin/query-digester
RUN chmod +x /usr/local/bin/query-digester

COPY .my.cnf /root/.my.cnf
RUN chmod 600 /root/.my.cnf

CMD ["tail", "-f", "/dev/null"]
