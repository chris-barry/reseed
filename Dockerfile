  # Dockerfile: I2P Reseed <https://github.com/martin61/i2p-tools>
# Author:     Chris Barry <chris@barry.im>
# License:    This is free and unencumbered software released into the public domain.
# NOTE:       https://geti2p.net/en/get-involved/guides/reseed

FROM golang:1.7
RUN go get github.com/martin61/i2p-tools
ENV SIGNER lazygravy@mail.i2p
CMD ./bin/i2p-tools reseed --signer=${SIGNER} --key /go/key.pem --netdb=/var/lib/i2p/i2p-config/netDb --ip 0.0.0.0 --port 8443 --trustProxy
