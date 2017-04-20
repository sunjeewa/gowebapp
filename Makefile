# Makefile to build the go app
CGO_ENABLED=0
GOOS=linux
#	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .


all:
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

clean:
	rm -rf app 

