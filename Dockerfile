FROM alpine:3.3
MAINTAINER @tomaszmiklas
RUN apk add --no-cache git make gcc build-base openssl-dev && \
	cd /tmp && \
	git clone https://github.com/katmagic/Shallot.git && \
	cd Shallot && \
	./configure && \
	make && \
	mkdir /opt && \
	mkdir /shallot && \
	mv shallot /opt && \
	apk del git make gcc build-base openssl-dev && \
	rm -rf /tmp/Shallot
WORKDIR /shallot
VOLUME ["/shallot"]
ENTRYPOINT ["/opt/shallot"]
