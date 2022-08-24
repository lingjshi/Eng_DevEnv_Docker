
INSTANCENAME :="devenv-meraki"
IMAGENAME := "npateriya/$(INSTANCENAME)"
VERSION := "v004"

build:
	@echo "Building image $(IMAGENAME)"
	docker build -t $(IMAGENAME) .
	docker tag "$(IMAGENAME):latest"  "$(IMAGENAME):$(VERSION)"
push:
	docker push $(IMAGENAME)
	docker push $(IMAGENAME):$(VERSION)
run: stop
	docker run --name $(INSTANCENAME) -d -p 9090:9090 -p 9091:9091 $(IMAGENAME)
	@echo "http://localhost:9090" 
	@echo "http://localhost:9091" 
stop: 
	docker stop  $(INSTANCENAME)  | true 
	docker rm  $(INSTANCENAME)  | true 

all: build run
