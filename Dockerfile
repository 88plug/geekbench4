FROM ubuntu:14.04

WORKDIR /app

RUN apt-get update
RUN apt-get install curl -y
RUN curl http://cdn.geekbench.com/Geekbench-4.1.2-Linux.tar.gz | tar -xz
RUN mkdir bin
RUN mv build.pulse/dist/Geekbench-4.1.2-Linux/* ./bin
RUN rm -rf build.pulse

COPY entrypoint.sh ./

ENTRYPOINT ["/app/entrypoint.sh"]
