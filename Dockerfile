FROM ubuntu:latest

RUN apt update

RUN apt install ruby -y

RUN gem install asciidoctor

RUN gem install asciidoctor-kroki

RUN gem install asciidoctor-pdf

RUN gem install asciidoctor-diagram

RUN mkdir -p /var/asciidocs

COPY ./build.sh usr/bin/

RUN chmod +x /usr/bin/build.sh

VOLUME /var/asciidocs

WORKDIR /var/asciidocs

CMD [ "/usr/bin/bash", "/usr/bin/build.sh"]