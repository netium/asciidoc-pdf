# asciidoc-pdf

## Description

Project of a docker to convert asciidoc documents in a folder to PDFs

## How to Use

The output of this project is the docker image hosted in docker hub with path: netium/asciidoctor-pdf:<tag>.

You can visit the docker image list at: https://hub.docker.com/repository/docker/netium/asciidoctor-pdf

To use the docker:

1. Go to the directory that including the asciidoc files that you want to convert to the PDFs;
2. Run the following commands:

````sh
docker run -v "$(pwd):/var/asciidocs" netium/asciidoctor-pdf:<tag>
````

## Limitations

The following are the limitations:

1. Don't set the plantuml output as SVG format, it's not well supported and will cause the diagram cannot be rendered correctly in output PDF documents.