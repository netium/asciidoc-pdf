#! /bin/sh

for f in *.adoc
do

	echo "Converting asciidoc file: $f"

#	asciidoctor -r asciidoctor-kroki -r asciidoctor-pdf -r asciidoctor-diagram -b pdf -a dot=/usr/bin/dot -a graphvizdot=/usr/bin/dot  -a allow-uri-read $f
#	asciidoctor --trace -r asciidoctor-kroki -r asciidoctor-pdf -b pdf -a allow-uri-read "$f"
#	asciidoctor -r asciidoctor-pdf -r asciidoctor-diagram -b pdf -a dot=/usr/bin/dot -a graphvizdot=/usr/bin/dot  -a allow-uri-read "$f"
	asciidoctor -r asciidoctor-pdf -r asciidoctor-diagram -b pdf -a allow-uri-read "$f" -D ./outputs
done