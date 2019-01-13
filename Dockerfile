FROM frolvlad/alpine-python3:latest
RUN pip3 install catt
ENTRYPOINT ["/usr/bin/catt"]
