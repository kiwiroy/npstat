[doc('Show this help')]
default:
    @just --list

[doc('Build a docker Ubuntu container for npstat')]
build name *ARGS:
    docker build -t {{name}} {{ARGS}} - < Dockerfile

[doc('Build a docker minimal container for npstat')]
build-alpine name *ARGS:
    docker build -t {{name}} {{ARGS}} - < Dockerfile.alpine

[doc('Run a docker container')]
run name *ARGS: 
    docker run --rm -ti -v $(pwd):/app/data {{name}} {{ARGS}}
