FROM nginx:1.26

# Install alp
RUN curl -L -o alp.tar.gz https://github.com/tkuchiki/alp/releases/download/v1.0.21/alp_linux_amd64.tar.gz && \
    tar -zxvf alp.tar.gz && \
    mv alp /usr/local/bin/ && \
    rm alp.tar.gz

CMD ["nginx", "-g", "daemon off;"]
