# I2P Reseed

Run an I2P Reseed :D

## Generating Keys

	$ docker run -it geti2p/reseed bash -c "/go/bin/i2p-tools keygen --tlsHost reseed.example.com && cat /go/*.crt && cat /go/*.pem"
	$ docker run -it geti2p/reseed bash -c "/go/bin/i2p-tools keygen --signer=example@mail.i2p && cat /go/*.crt && cat /go/*.pem"

## Running

	$ docker run -e SIGNER=itoope@mail.i2p -p 8443:8443 -v /path/to/key:/go/key.pem:ro -v /path/to/netdb/:/var/lib/i2p/i2p-config/netDb:ro geti2p/reseed

## License

Public Domain

