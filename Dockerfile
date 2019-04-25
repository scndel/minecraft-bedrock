FROM ubuntu:latest

ENV LD_LIBRARY_PATH /bedrock
ADD .$LD_LIBRARY_PATH $LD_LIBRARY_PATH
RUN apt-get update && apt-get install -y \
    libcurl4 \
    libcurl4-openssl-dev

WORKDIR $LD_LIBRARY_PATH
EXPOSE 19132/udp
CMD ./bedrock_server
