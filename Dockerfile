FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/ipxe/ipxe.git
WORKDIR ipxe/src/
RUN apt-get install -y build-essential liblzma-dev isolinux genisoimage
COPY script.ipxe .
RUN make -j 8 EMBED=script.ipxe
RUN ls -la bin/
