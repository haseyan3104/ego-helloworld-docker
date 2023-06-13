ARG VERSION

FROM ghcr.io/edgelesssys/ego-dev:$VERSION

WORKDIR /root
RUN git clone https://github.com/edgelesssys/ego.git

WORKDIR /root/ego/samples/helloworld

RUN ego-go build
RUN ego sign helloworld

ENTRYPOINT ego run helloworld