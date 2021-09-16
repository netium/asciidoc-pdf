FROM alpine:latest

RUN apk add --no-cache ruby openjdk11-jre-headless graphviz

RUN gem install asciidoctor asciidoctor-kroki asciidoctor-pdf asciidoctor-diagram

RUN gem install rouge coderay

RUN mkdir -p /var/asciidocs

COPY ./build.sh /usr/bin/

RUN chmod +x /usr/bin/build.sh

VOLUME /var/asciidocs

WORKDIR /var/asciidocs

ENV GRAPHVIZ_DOT=/usr/bin/dot

ENV DOT=/usr/bin/dot

CMD [ "/bin/sh", "/usr/bin/build.sh"]