FROM alpine:latest

#RUN apk add --no-cache ruby openjdk11-jre-headless graphviz
#RUN echo -e http://mirrors.ustc.edu.cn/alpine/v3.14/main > /etc/apk/repositories

RUN apk add --no-cache ruby-dev make gcc musl-dev fontconfig openjdk11-jre

#RUN gem install asciidoctor asciidoctor-kroki asciidoctor-pdf asciidoctor-diagram
RUN gem install asciidoctor asciidoctor-kroki asciidoctor-pdf asciidoctor-diagram json

RUN gem install rouge coderay

RUN apk del make gcc musl-dev

RUN mkdir -p /var/asciidocs

COPY ./build.sh /usr/bin/

RUN chmod +x /usr/bin/build.sh

VOLUME /var/asciidocs

WORKDIR /var/asciidocs

ENV GRAPHVIZ_DOT=/usr/bin/dot

ENV DOT=/usr/bin/dot

CMD [ "/bin/sh", "/usr/bin/build.sh"]