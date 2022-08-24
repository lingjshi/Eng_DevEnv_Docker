
INSTANCENAME :="devenv-aci"
IMAGENAME := "npateriya/$(INSTANCENAME)"
VERSION := "v002"

build:
	@echo "Building image $(IMAGENAME)"
	docker build -t $(IMAGENAME) .
	docker tag $(IMAGENAME):latest $(IMAGENAME):$(VERSION)
push:
	docker push $(IMAGENAME)
	docker push $(IMAGENAME):$(VERSION)
run: stop
	docker run --name $(INSTANCENAME) -d -p 9090:9090 -p 8080:8080 $(IMAGENAME)
	@echo "http://localhost:9090" 
	@echo "http://localhost:8080" 
stop: 
	docker stop  $(INSTANCENAME)  | true 
	docker rm  $(INSTANCENAME)  | true 

all: build run
