FROM ubuntu:latest

# Install packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        curl && \
        default-mysql-client \
        git \
        percona-toolkit \
    rm -rf /var/lib/apt/lists/*

# Install alp
RUN curl -L -o alp.tar.gz https://github.com/tkuchiki/alp/releases/download/v1.0.21/alp_linux_amd64.tar.gz && \
    tar -zxvf alp.tar.gz && \
    mv alp /usr/local/bin/ && \
    rm alp.tar.gz

COPY query-digester /usr/local/bin/query-digester
RUN chmod +x /usr/local/bin/query-digester

COPY .my.cnf /root/.my.cnf
RUN chmod 600 /root/.my.cnf

CMD ["tail", "-f", "/dev/null"]
