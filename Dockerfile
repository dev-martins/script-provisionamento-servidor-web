FROM httpd:latest

RUN apt-get update && apt-get install -y \
    unzip git curl -y

# RUN rm -rf /usr/local/bin/htdocs/*
COPY ./clone.sh /usr/local/bin/htdocs/
ENTRYPOINT ["/bin/bash", "-c", "/usr/local/bin/htdocs/clone.sh"]


EXPOSE 80