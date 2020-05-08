FROM debian:buster

RUN apt update && apt install -y build-essential 

RUN mkdir /counter/

COPY . /counter/

WORKDIR /counter

RUN make -i clean

RUN make

ENTRYPOINT ["./counter"]
