#! /usr/bin/bash

for f in *.adoc *.ad *.asciidoc *.asc; do
	echo "Converting asciidoc file: $f"
#	asciidoctor -r asciidoctor-kroki -r asciidoctor-pdf -r asciidoctor-diagram -b pdf -a dot=/usr/bin/dot -a graphvizdot=/usr/bin/dot  -a allow-uri-read $f
	asciidoctor -r asciidoctor-kroki -r asciidoctor-pdf -b pdf -a allow-uri-read "$f"
done