# Makefile to build the go app
CGO_ENABLED=0
GOOS=linux
#	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .


all:
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

clean:
	rm -rf app 

docker:
	sudo docker build -t goapp:v1 .

push:
	gcloud docker -- push gcr.io/business-projects-163809/goapp:v1

tag:
	docker tag goapp:v1 gcr.io/business-projects-163809/goapp:v1	
