FROM ubuntu:20.04

ENV LD_LIBRARY_PATH bedrock

WORKDIR $LD_LIBRARY_PATH

RUN apt update && apt install -y \
    libcurl4 \
    libcurl4-openssl-dev
    
COPY ./$LD_LIBRARY_PATH .

RUN ln -s ./properties/server.properties server.properties

EXPOSE 19132/udp

CMD ./bedrock_server
