#! /usr/bin/bash

for f in *.adoc *.ad *.asciidoc *.asc; do
	asciidoctor -r asciidoctor-kroki -r asciidoctor-pdf -r asciidoctor-diagram -b pdf -a allow-uri-read $f
done